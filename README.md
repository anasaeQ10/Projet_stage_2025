# 🔐 Security Component Checker

> Projet de stage d’été 2024/2025 — Système de vérification des composants du système d'information en matière de patchs de sécurité.

## 📌 Contexte

Ce projet a pour objectif de concevoir une application web permettant aux administrateurs et responsables sécurité de vérifier que les composants logiciels et matériels d’un système d’information sont à jour, notamment en matière de vulnérabilités (CVE).

## 🎯 Objectifs

- Automatiser l’analyse des composants et leur état de sécurité.
- Identifier les vulnérabilités connues via une API de CVE (ex. : NVD).
- Générer des rapports et des alertes.
- Centraliser les données pour un meilleur suivi.
- Proposer un tableau de bord synthétique pour la visualisation.

## 🧩 Fonctionnalités

### ✅ Gestion des utilisateurs
- Authentification sécurisée
- Rôles : Administrateur / Utilisateur
- Gestion des profils (CRUD)
- Historique et traçabilité

### 🧱 Gestion des composants
- Ajout automatique ou manuel
- Consultation des composants (matériel & logiciel)
- Archivage et traçabilité

### 🔎 Détection des vulnérabilités
- Connexion à une API (NVD_API)
- Analyse des CVE connues
- Statut des composants : 🔴 vulnérable, 🟡 à mettre à jour, 🟢 à jour

### 📄 Génération de rapports
- Export PDF / Excel
- Rapport d’audit automatisé
- Historique & archivage sécurisé
- Notification par email en cas de haute criticité

### 📊 Tableau de bord
- Statistiques de sécurité
- Graphiques et indicateurs
- Suivi des périodes d’attaque

## 🛠️ Stack technique (proposée)

- **Frontend** : Spring MVC
- **Backend** : java JEE SpringBoot
- **Base de données** : MySql
- **API vulnérabilités** : NVD
- **Outils externes** : Nmap
- **PDF / Excel** : Puppeteer, ReportLab, Pandas
- **Sécurité** : Auth JWT, RGPD, hashage mot de passe, logs d’audit

## 📆 Planification Agile

| Sprint | Fonctions | Livraison |
|--------|-----------|-----------|
| 0 | Cahier des charges, SFG/SFD, cahier de tests | 21/07/2025 |
| 1 | Authentification & utilisateurs | 28/07/2025 |
| 2 | Composants & vulnérabilités | 11/08/2025 |
| 3 | Rapports & tableau de bord | 25/08/2025 |
| 4 | Tests finaux & améliorations | 01/09/2025 |

## ▶️ Lancement du projet

### Prérequis

- Java 17+
- Maven
- MySQL (MAMP,XAMP,...)

### Étapes

1. Cloner le dépôt :
   ```bash
   git clone https://github.com/anasaeQ10/Projet_stage_2025.git
   cd vulnerabilityscanner
2. Configurer la base de données dans "src/main/resources/application.properties" :

   ```bash
   spring.datasource.url=jdbc:mysql://localhost:3306/nom_de_la_base
   spring.datasource.username=utilisateur
   spring.datasource.password=mot_de_passe

3. Lancer l’application :
   ```bash
   ./mvnw spring-boot:run

4. Accéder à l'application :
   ```bash 
   http://localhost:8080/login


## 🔒 Contraintes

- Délai court (sprints hebdomadaires)
- Ressources limitées (open-source privilégié)
- Respect des normes de sécurité (RGPD, CVSS)
- Intégration API fiable et à jour

## 👨‍💻 Auteur

**Anas AIT EL QADI**  
Projet de stage 4IIR - 2024/2025

