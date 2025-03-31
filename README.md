# association_back

## 🚀 Description
Ce projet est une application Spring Boot RESTful permettant la gestion des utilisateurs, des événements, des rôles et d'autres entités liées à une association. Il s'agit du **backend** d'une architecture fullstack, développé dans le cadre d'un projet DevOps avec déploiement continu.

Le projet inclut :
- Analyse statique du code avec SonarQube
- Vérification de dépendances avec OWASP Dependency-Check
- Livraison continue avec Jenkins, Nexus, Docker et Kubernetes
- Supervision (prévue) avec Prometheus et Grafana

## 📦 Technologies utilisées
- Java 11 / Spring Boot 2.4.0
- Maven
- PostgreSQL / MySQL
- SonarQube
- Jenkins
- Nexus
- Docker
- Kubernetes (à venir)

## 🛠️ Installation locale (développement)
```bash
# Cloner le projet
git clone https://gitlab.dpc.com.tn/marwa.benmansour/association_back.git
cd association_back

# Lancer le build Maven
mvn clean package -DskipTests

# Lancer l'application
java -jar target/association-0.0.1-SNAPSHOT.jar
```

## 🐳 Docker
Pour lancer l'application avec Docker :
```bash
docker build -t association-backend:latest .
docker run -d -p 8080:8080 --name association-app association-backend:latest
```

## 📂 Structure du projet
```
association_back/
├── src/
│   └── main/java/...          # Code source Java
├── pom.xml                   # Fichier de configuration Maven
├── Jenkinsfile               # Pipeline CI/CD Jenkins
├── Dockerfile                # Image Docker de l'application
└── README.md
```

## 🔁 Pipeline CI/CD Jenkins
Le projet dispose d’un pipeline Jenkins complet avec les étapes suivantes :
- Récupération du code depuis GitLab (branche `develop`)
- Build Maven sans tests (`mvn clean package -DskipTests`)
- Analyse SonarQube
- Détection de vulnérabilités avec OWASP Dependency-Check
- Exécution des tests
- Publication de l’artefact `.jar` sur Nexus
- Construction et push de l’image Docker

## ⚙️ Déploiement (prévu)
Le déploiement via Kubernetes est prévu avec un fichier YAML ou Helm Chart.  
L’application sera ensuite supervisée via Prometheus et Grafana.

## 🧪 Tests
Pour exécuter les tests :
```bash
mvn test
```

## 🤝 Contribuer
Les contributions sont bienvenues. Créez une *issue* ou une *merge request* si vous souhaitez proposer des modifications.

## 👩‍💻 Auteure
Marwa Ben Mansour – Développeuse & DevOps en formation

## 📝 Licence
Ce projet est interne à l’entreprise et n’est pas open source.

## 📌 Statut du projet
✅ En cours de développement – pipeline opérationnel – déploiement en cours d’automatisation avec Kubernetes.