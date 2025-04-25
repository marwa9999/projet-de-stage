# Annexe – Accès au Kubernetes Dashboard

## 🎯 Objectif

Cette annexe présente la procédure de connexion et l’interface du **Kubernetes Dashboard** utilisée pour superviser l’état des pods et déploiements de mon projet DevOps sur MicroK8s.

---

## 🛠️ Étapes de mise en place

### 1. Activer le Dashboard avec MicroK8s :

```bash
microk8s enable dashboard
```

### 2. Lancer le proxy local :

```bash
microk8s dashboard-proxy
```

### 3. Accéder à l’interface via le navigateur local :

```text
https://127.0.0.1:10443
```

> 🔐 Un avertissement de sécurité peut apparaître (certificat auto-signé). Cliquer sur **"Avancé" > "Accepter le risque"**.

### 4. Créer un compte administrateur et récupérer un token :

```bash
microk8s kubectl create serviceaccount dashboard-admin -n kube-system
microk8s kubectl create clusterrolebinding dashboard-admin --clusterrole=cluster-admin --serviceaccount=kube-system:dashboard-admin
microk8s kubectl -n kube-system describe secret $(microk8s kubectl -n kube-system get secret | grep dashboard-admin | awk '{print $1}')
```

### 5. Connexion avec le token :

Coller le token dans le champ prévu et cliquer sur **"Sign in"**.

---

## 📸 Capture de l’interface Dashboard

![Kubernetes Dashboard](../chemin/vers/capture_dashboard.png)

Cette interface montre :
- Les pods déployés (`association-back`, `association-front`)
- Le statut `Running` sur les nœuds Kubernetes
- L'utilisation CPU / mémoire
- Le nombre de redémarrages et la durée de vie des pods

---

## ✅ Conclusion

Le Dashboard a permis de valider visuellement le bon déploiement et la bonne exécution des composants de mon projet DevOps dans le cluster MicroK8s.