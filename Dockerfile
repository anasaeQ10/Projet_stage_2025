# Étape 1 : Build de l'application
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copie des fichiers de configuration Maven
COPY pom.xml .
COPY .mvn .mvn
COPY mvnw .

RUN chmod +x mvnw

# Téléchargement des dépendances avec mise en cache du dossier /root/.m2
RUN --mount=type=cache,target=/root/.m2 ./mvnw dependency:go-offline -B

# Copie du code source et compilation du JAR
COPY src ./src
RUN --mount=type=cache,target=/root/.m2 ./mvnw clean package -DskipTests -B

# Étape 2 : Image d'exécution (Runtime)
FROM eclipse-temurin:17-jre

WORKDIR /app

# Sécurité : Création d'un utilisateur non-root (Debian/Ubuntu)
RUN groupadd -r appgroup && useradd -r -g appgroup appuser

# Copie de l'artefact généré depuis l'étape de build
COPY --from=build /app/target/*.jar app.jar

# Attribution des droits sur l'exécutable
RUN chown appuser:appgroup app.jar

USER appuser

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]