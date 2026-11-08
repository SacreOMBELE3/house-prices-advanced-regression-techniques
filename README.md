# House Prices Prediction

Projet de Data Science visant à analyser les caractéristiques de logements à Ames (Iowa) et à prédire leur prix de vente (`SalePrice`) à partir du jeu de données **House Prices - Advanced Regression Techniques** de Kaggle.

Ce fichier est la documentation générale du dépôt. Chaque dossier de travail contient également son propre `README.md`, qui décrit son rôle, son contenu et les livrables attendus.

## Objectifs

- Comprendre et auditer les données immobilières.
- Nettoyer et préparer les données sans fuite entre entraînement, validation et test.
- Explorer les facteurs associés au prix de vente.
- Construire, comparer et évaluer plusieurs modèles de régression.
- Enregistrer les données dans SQL Server et préparer leur exploitation dans Power BI.
- Produire un fichier de prédictions au format Kaggle.

Le **RMSLE** est la métrique principale de sélection du modèle. Le MAE, le MSE, le RMSE et le R² sont également prévus. Les performances doivent être calculées sur une validation extraite de `train.csv`, jamais sur `test.csv`, qui ne contient pas `SalePrice`.

## Architecture du projet

```text
.
├── data/
│   ├── bronze/       # Fichiers Kaggle d'origine et dictionnaire de données
│   ├── silver/       # Données contrôlées et préparées (à produire)
│   └── gold/         # Données finales destinées à l'analyse (à produire)
├── notebooks/        # Audit, préparation, EDA, features et modélisation
├── sql/              # Scripts SQL Server, chargements et vues analytiques
├── models/           # Modèle entraîné et artefacts associés
├── powerbi/          # Rapport et éléments du tableau de bord Power BI
├── predictions/      # Prédictions et soumission Kaggle
├── reports/          # Rapport final et résultats du projet
└── docs/             # Cahier des charges et diagramme d'architecture
```

Le flux de données prévu est :

```text
CSV Kaggle → Bronze → préparation et analyse Python → Silver → Gold / SQL Server
                                               └→ modèles → prédictions CSV
SQL Server / résultats des modèles → Power BI et rapport final
```

## État actuel

La structure des dossiers est en place. `data/bronze/` contient les fichiers d'entrée. Les autres dossiers sont préparés pour recevoir les livrables ; ils ne signifient pas que les traitements Python, la base SQL Server, le tableau de bord ou les modèles sont déjà implémentés.

Les étapes et livrables attendus sont détaillés dans le [cahier des charges](docs/Cahier_des_charges_House_Prices_Prediction.pdf).

## Données d'entrée

Voir le [README des données brutes](data/bronze/README.md) pour le détail des fichiers, et le [dictionnaire Kaggle](data/bronze/data_description.txt) pour la signification des variables.

## Technologies prévues

- Python : Pandas, NumPy, Matplotlib, Seaborn, scikit-learn et XGBoost.
- Jupyter Notebook ou Google Colab.
- SQL Server pour le stockage et les vues analytiques.
- Power BI pour le reporting.
- Git et GitHub pour le versionnement.

Les dépendances Python et les procédures d'installation restent à définir dans un futur fichier `requirements.txt`.

## Principes de validation

1. Séparer les données de validation de `train.csv`.
2. Ajuster les transformations uniquement sur les données d'entraînement, puis les appliquer à la validation et au test.
3. Ne pas utiliser `test.csv` pour calculer des métriques.
4. Après sélection, réentraîner le modèle retenu sur les données d'entraînement et générer une soumission contenant les identifiants attendus et les prédictions `SalePrice`.

## Documentation par dossier

- [Données](data/README.md) · [Bronze](data/bronze/README.md) · [Silver](data/silver/README.md) · [Gold](data/gold/README.md)
- [Notebooks](notebooks/README.md) · [SQL](sql/README.md) · [Modèles](models/README.md)
- [Power BI](powerbi/README.md) · [Prédictions](predictions/README.md) · [Rapports](reports/README.md) · [Documents du projet](docs/README.md)
