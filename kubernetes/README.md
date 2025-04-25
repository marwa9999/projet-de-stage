# kubernetes

## ☸️ Déploiement d’applications avec Kubernetes

Ce dépôt contient les fichiers de configuration Kubernetes utilisés pour le déploiement d’une application fullstack (frontend Angular et backend Spring Boot) dans le cadre de mon projet DevOps / stage.

---

## 📦 Composants déployés

- **association-back** (Spring Boot)
- **association-front** (Angular)
- Déploiement via `Deployment` et `Service`
- Pas d'utilisation d'Ingress (accès par NodePort)
- Images Docker hébergées sur Docker Hub

---

## 📁 Arborescence

```
kubernetes/
├── backend/
│   ├── deployment.yaml
│   └── service.yaml
├── frontend/
│   ├── deployment.yaml
│   └── service.yaml
└── README.md
```

---

## ⚙️ Commandes de déploiement

```bash
kubectl apply -f backend/
kubectl apply -f frontend/
kubectl get pods
kubectl get services
```

---

## 📌 Remarques

- Le cluster Kubernetes utilisé est **MicroK8s** (installé localement sur une VM)
- Les fichiers YAML ont été versionnés pour une meilleure traçabilité
- Le déploiement est intégré dans un pipeline Jenkins

---

## 👩‍💻 Réalisé par

**Marwa Ben Mansour** – Stagiaire DevOps – 2025
