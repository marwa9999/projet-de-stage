# grafana-prometheus

## 📈 Supervision avec Prometheus et Grafana

Ce projet présente une mise en place de la supervision d'une infrastructure avec **Prometheus** et **Grafana**, réalisée dans le cadre de mon projet DevOps / stage.

---

## 🔧 Composants utilisés

- **Prometheus** : collecte des métriques des services
- **Grafana** : visualisation des métriques via des dashboards
- **Node Exporter** : supervision des ressources système (CPU, RAM, etc.)
- **Jenkins Exporter** (via /prometheus) : supervision des métriques Jenkins

---

## ⚙️ Déploiement

Les services sont déployés via `docker-compose`.  
Le fichier `prometheus.yml` est configuré manuellement pour ajouter plusieurs `targets`.

### Exemple de cibles supervisées :

- Prometheus (`localhost:9090`)
- Node Exporter (`localhost:9100`, `192.168.8.149:9100`)
- Jenkins (`192.168.8.147:8080/prometheus`)

---

## 🖥️ Dashboards Grafana

Des dashboards ont été créés dans Grafana pour visualiser :

- L’état des VMs (Node Exporter)
- Les performances de Jenkins
- Les métriques Prometheus internes

---

## 📸 Captures d’écran

Les captures de la configuration Prometheus, des dashboards Grafana et des services supervisés sont disponibles dans le dossier `annexes/`.

---

## 👩‍💻 Réalisé par

**Marwa Ben Mansour** – Stagiaire DevOps – 2025
