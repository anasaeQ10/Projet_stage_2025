# ==================================================
# ÉTAPE 1 : BUILD (CONSTRUCTION DE L'APPLICATION)
# ==================================================

# Sélectionne une image contenant :
# - Maven 3.9 : outil de gestion et de compilation du projet Java.
# - Eclipse Temurin 17 : environnement Java 17.
#
# AS builder donne le nom "builder" à cette étape.
# Ce nom permettra de récupérer les fichiers générés ultérieurement.
FROM maven:3.9-eclipse-temurin-17 AS builder


# Définit /app comme répertoire de travail dans le conteneur.
# Toutes les commandes suivantes seront exécutées depuis ce répertoire.
# Si le répertoire n'existe pas, Docker le crée.
WORKDIR /app


# Copie le fichier pom.xml depuis notre machine vers /app dans le conteneur.
# pom.xml contient les dépendances, plugins et configurations Maven.
COPY pom.xml .


# Télécharge les dépendances Maven nécessaires au projet.
# dependency:go-offline prépare les dépendances pour une compilation hors ligne.
# -B active le mode Batch (sans interaction utilisateur).
RUN mvn dependency:go-offline -B


# Copie le dossier src de notre projet vers /app/src dans le conteneur.
# Ce dossier contient le code source Java et les ressources de l'application.
COPY src ./src


# Compile le projet et génère le fichier JAR dans /app/target.
# package demande à Maven de construire le package de l'application.
# -DskipTests demande de ne pas exécuter les tests.
RUN mvn package -DskipTests


# ==================================================
# ÉTAPE 2 : RUNTIME (EXÉCUTION DE L'APPLICATION)
# ==================================================

# Sélectionne une image contenant le JRE Java 17.
# JRE = environnement nécessaire pour exécuter une application Java.
# Contrairement au builder, cette image ne contient pas Maven.
FROM eclipse-temurin:17-jre-jammy


# Définit /app comme répertoire de travail de cette deuxième étape.
WORKDIR /app


# Récupère le JAR généré dans l'étape précédente (builder).
# --from=builder indique la source : la première étape du Dockerfile.
# /app/target/*.jar désigne le fichier JAR généré par Maven.
# app.jar représente son nouveau nom dans l'image finale.
#
# Résultat : seule l'application compilée est copiée dans l'environnement runtime.
COPY --from=builder /app/target/*.jar app.jar


# Indique que l'application utilise le port 8080 dans le conteneur.
# Cette instruction documente le port, mais ne le publie pas sur le Mac.
# La publication est configurée dans docker-compose.yml.
EXPOSE 8080


# Commande exécutée automatiquement au démarrage du conteneur.
# java : lance la machine virtuelle Java.
# -jar : demande à Java d'exécuter un fichier JAR.
# app.jar : fichier contenant notre application Spring Boot.
ENTRYPOINT ["java", "-jar", "app.jar"]