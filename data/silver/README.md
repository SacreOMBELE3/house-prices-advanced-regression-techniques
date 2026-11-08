# Silver — données préparées

Cette couche est destinée aux données après audit et préparation : contrôle des types et des doublons, traitement documenté des valeurs manquantes et anomalies, encodage des variables catégorielles et création des variables dérivées nécessaires.

## État

Aucun jeu de données préparé n'est encore présent. Les règles de nettoyage et les transformations restent à définir et à documenter dans les notebooks ou scripts correspondants.

## Règles à respecter

- Garder les données Bronze intactes.
- Ajuster les transformations sur l'entraînement uniquement et les réutiliser à l'identique sur la validation et le test.
- Éviter toute fuite de `SalePrice` vers les variables explicatives.
- Préserver les identifiants requis pour relier les lignes aux sorties de prédiction.
