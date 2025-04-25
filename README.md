# Projet DevOps – Application Fullstack (Angular + Spring Boot)

Ce projet a été réalisé dans le cadre d’un stage DevOps et met en œuvre une chaîne complète de développement, d’intégration continue, de conteneurisation, de déploiement et de supervision.

---

## 🧩 Architecture du projet

- **Frontend** : Angular
- **Backend** : Spring Boot (Java 11)
- **Base de données** : PostgreSQL / MySQL
- **CI/CD** : Jenkins, SonarQube, Nexus, Docker
- **Conteneurisation** : Docker
- **Orchestration** : Kubernetes (MicroK8s)
- **Monitoring** : Prometheus, Grafana
- **Infrastructure as Code** : Terraform (AWS), Ansible

---

## 🔄 Pipeline Jenkins CI/CD

Le pipeline Jenkins automatise les étapes suivantes :

1. Clonage du code depuis GitLab
2. Analyse SonarQube + OWASP
3. Build + Tests
4. Publication de l'artefact (.jar) dans Nexus
5. Build et push d'une image Docker
6. Déploiement sur Kubernetes (MicroK8s)

---

## ☁️ Déploiement Kubernetes

- Utilisation de `Deployment` et `Service` pour chaque composant
- Déploiement local sur MicroK8s
- Pas d’Ingress : exposition via NodePort
- Images Docker hébergées sur Docker Hub

---

## 📊 Supervision avec Prometheus & Grafana

- **Prometheus** scrappe les cibles définies (`prometheus.yml`)
- **Grafana** affiche des dashboards pour Jenkins et les VMs
- Supervision étendue avec Node Exporter

---

## 📁 Arborescence du projet

```
project/
├── backend/                      # Spring Boot app + Dockerfile
├── frontend/                     # Angular app + Dockerfile
├── jenkins/                      # Jenkinsfiles (front + back)
├── docker-compose/               # Fichiers pour monitoring
├── kubernetes/                   # Déploiement K8s YAML
├── terraform/                    # Provisioning AWS
├── ansible/                      # Installation automatisée Docker
├── screenshots/                  # Captures pour le rapport
└── README.md
```

---

## 👩‍💻 Réalisé par

**Marwa Ben Mansour**  
Stagiaire DevOps – 2025

---

## 📜 Licence

Projet interne réalisé à des fins pédagogiques – non open source.
