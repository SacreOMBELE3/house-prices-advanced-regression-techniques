# Bronze — données sources

La couche Bronze conserve les fichiers reçus du jeu de données Kaggle sans nettoyage, imputation, encodage ni autre transformation. Toute préparation doit produire des données dans une autre couche ou dans les artefacts correspondants.

## Fichiers présents

| Fichier | Rôle |
|---|---|
| `train.csv` | Caractéristiques des propriétés et variable cible `SalePrice`. |
| `test.csv` | Caractéristiques des propriétés à prédire ; `SalePrice` n'est pas fourni. |
| `sample_submission.csv` | Exemple du format de soumission attendu par Kaggle. |
| `data_description.txt` | Description des variables du jeu de données. |

Le dictionnaire de données est conservé ici avec les CSV sources. Utilisez-le pour interpréter les variables, notamment les valeurs manquantes qui peuvent représenter l'absence réelle d'un équipement.

## Règles d'utilisation

- Ne pas écraser les fichiers source par des données nettoyées.
- Utiliser une validation séparée de `train.csv` pour mesurer les performances.
- Ne pas calculer de métriques de validation sur `test.csv`.
- Conserver les colonnes d'identification nécessaires à la soumission finale.

Les couches [Silver](../silver/README.md) et [Gold](../gold/README.md) décrivent les sorties attendues en aval.
