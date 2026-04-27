# A
- Comment récupérez-vous le hostname dans Node.js ?

`import { hostname } from 'os';` puis `hostname()`

- Quelle différence entre “listening on [localhost](http://localhost)” et “0.0.0.0” dans un conteneur ?

Si l'application écoute sur localhost, elle ne pourra pas communiquer avec l'extérieur et seulement de manière interne au conteneur

# B
- Quels fichiers doivent absolument être ignorés ? Pourquoi ?

node_modules, il faut tout re-télécharger pour ne pas avoir les dépendances de dev

- Comment valider que votre image finale ne contient pas d’artefacts de dev ?

on peut vérifier dans les fichiers du conteneur s'il y a des dépendances de dev

# C

- Quelle stratégie de tags adoptez-vous : `latest`, SHA, semver ?

latest et SHA, également le nom de la branche

- Pourquoi un tag immuable est préférable pour un déploiement fiable ?
