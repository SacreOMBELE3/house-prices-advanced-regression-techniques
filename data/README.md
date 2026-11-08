# Données

Ce dossier suit l'organisation en couches Bronze, Silver et Gold décrite dans le cahier des charges. Consultez le README de chaque couche pour connaître ses règles et ses contenus.

| Couche | Rôle | État |
|---|---|---|
| [Bronze](bronze/README.md) | Conserver les fichiers sources Kaggle sans transformation. | Fichiers source présents. |
| [Silver](silver/README.md) | Accueillir les données auditées, nettoyées et préparées. | À produire. |
| [Gold](gold/README.md) | Accueillir les tables et jeux de données finalisés pour l'analyse. | À produire. |

Les données de validation doivent être dérivées de l'entraînement. Le jeu de test Kaggle ne contient pas la cible et ne doit pas servir à évaluer les modèles.
