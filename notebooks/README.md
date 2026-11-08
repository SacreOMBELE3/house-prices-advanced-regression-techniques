# Notebooks

Ce dossier accueillera les notebooks Jupyter documentant le parcours de Data Science. Les notebooks ne sont pas encore présents ; les noms ci-dessous reprennent les étapes prévues dans le cahier des charges.

1. `01_data_understanding.ipynb` — dimensions, types, cohérence des fichiers et compréhension des variables.
2. `02_data_cleaning.ipynb` — audit qualité, valeurs manquantes, doublons et anomalies.
3. `03_exploratory_data_analysis.ipynb` — distributions et relations entre caractéristiques et prix.
4. `04_feature_engineering.ipynb` — transformations et création de variables.
5. `05_model_training.ipynb` — baseline, séparation entraînement/validation et entraînement des modèles.
6. `06_model_evaluation.ipynb` — comparaison des métriques, optimisation et sélection du modèle.

## Bonnes pratiques

- Exécuter les étapes dans l'ordre et décrire les conclusions utiles.
- Ne pas enregistrer de données préparées dans `data/bronze/`.
- Ajuster les transformations uniquement sur l'entraînement afin d'éviter les fuites de données.
- Évaluer sur une validation issue de `train.csv`, jamais sur le jeu Kaggle `test.csv`.
- Si la logique devient réutilisable ou complexe, la placer dans un module Python plutôt que la dupliquer dans les notebooks.
