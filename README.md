# association_back

## 🚀 Description

Ce projet est une application **Spring Boot RESTful** permettant la gestion des utilisateurs, des événements, des rôles et d'autres entités liées à une association. Il s'agit du **backend** d'une architecture fullstack, développé dans le cadre d’un projet **DevOps** avec **déploiement continu**.

---

### 🔧 Le projet inclut :

- Analyse statique du code avec **SonarQube**
- Vérification de dépendances avec **OWASP Dependency-Check**
- Livraison continue avec **Jenkins**, **Nexus**, **Docker** et **Kubernetes**
- Supervision (prévue) avec **Prometheus** et **Grafana**
- Provisioning de machines virtuelles avec **Terraform**
- Configuration automatisée avec **Ansible**

---

## 📆 Technologies utilisées

- Java 11 / Spring Boot 2.4.0
- Maven
- PostgreSQL / MySQL
- SonarQube
- Jenkins
- Nexus
- Docker
- Kubernetes (en cours)
- Terraform
- Ansible

---

## 🛠️ Installation locale (pour développement)

```bash
# Cloner le projet
git clone https://gitlab.dpc.com.tn/marwa.benmansour/association_back.git
cd association_back

# Lancer le build Maven
mvn clean package -DskipTests

# Lancer l'application
java -jar target/association-0.0.1-SNAPSHOT.jar
```

---

## 🐳 Docker

### Construire et lancer l'application avec Docker :

```bash
docker build -t association-backend:latest .
docker run -d -p 8080:8080 --name association-app association-backend:latest
```

---

## 📂 Structure du projet

```
association_back/
├── src/                            # Code source Java
│   └── main/java/...
├── pom.xml                         # Configuration Maven
├── Dockerfile                      # Image Docker de l'application
├── Jenkinsfile                     # Pipeline Jenkins
├── ansible/                        # Scripts et playbooks Ansible
│   ├── install-docker.yml
│   ├── hosts.ini
│   └── ansible.cfg
├── terraform/                      # Infrastructure AWS avec Terraform
│   ├── provider.tf
│   ├── network.tf
│   ├── security.tf
│   ├── key.tf
│   ├── instances.tf
│   └── outputs.tf (optionnel)
└── README.md
```

---

## 🔄 Pipeline CI/CD Jenkins

Le pipeline Jenkins exécute les étapes suivantes :

1. Récupération du code depuis GitLab (branche `develop`)
2. Build Maven (sans tests dans un premier temps)
3. Analyse SonarQube
4. Scan de vulnérabilités avec OWASP Dependency-Check
5. Exécution des tests unitaires
6. Publication du `.jar` sur Nexus
7. Construction et push de l’image Docker vers un registre

---

## ☁️ Provisioning de l'infrastructure avec Terraform (AWS)

Le dossier `terraform/` permet de :

- Créer un VPC, une subnet publique, une internet gateway, et une route table
- Générer un security group avec les ports 22, 80, 8080, 8081, 9000, etc.
- Créer une paire de clés SSH
- Déployer 4 instances EC2 (Ubuntu 22.04) avec IPs privées fixes :
  - `vm-ubuntu1`, `Node-01`, `Node-02`, `Node-03`

Commandes déploiement :

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

---

## 🛠️ Configuration automatique avec Ansible

Le dossier `ansible/` contient :

- Un playbook `install-docker.yml` pour installer Docker sur les 4 machines
- Un fichier `hosts.ini` avec les adresses IP des machines provisionnées par Terraform
- Un fichier `ansible.cfg` pour centraliser la configuration

Exécution du playbook :

```bash
cd ansible
ansible-playbook -i hosts.ini install-docker.yml
```

Vérification de l'installation Docker :

```bash
ansible nodes -i hosts.ini -a "docker --version"
```

---

## ⚙️ Déploiement Kubernetes (en cours)

Le déploiement via Kubernetes est en cours de préparation, avec des manifests YAML ou Helm Charts. 
Il sera suivie d'une supervision avec **Prometheus** et **Grafana**.

---

## 🧪 Tests

```bash
mvn test
```

---

## 🤝 Contribuer

Les contributions sont bienvenues. 
Créez une *issue* ou une *merge request* pour toute proposition d'amélioration.

---

## 👩‍💻 Auteure

**Marwa Ben Mansour**  
Développeuse & DevOps en formation

---

## 🔖 Statut du projet

✅ En cours de développement — pipeline CI/CD fonctionnel — provisioning avec Terraform terminé — déploiement Kubernetes en préparation.

---

## 📜 Licence

Ce projet est interne à l'entreprise et n'est pas open source.
