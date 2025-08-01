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
- Connexion à une API (Google OSV)
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
- **Backend** : Node.js ou Python (FastAPI/Flask)
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

## 🔒 Contraintes

- Délai court (sprints hebdomadaires)
- Ressources limitées (open-source privilégié)
- Respect des normes de sécurité (RGPD, CVSS)
- Intégration API fiable et à jour

## 👨‍💻 Auteur

**Anas AIT EL QADI**  
Projet de stage 4IIR - 2024/2025

---

> _“Sécuriser, c’est prévenir avant de guérir.”_
