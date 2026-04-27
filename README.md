# A
- Comment récupérez-vous le hostname dans Node.js ?

`import { hostname } from 'os';` puis `hostname()`

- Quelle différence entre “listening on [localhost](http://localhost)” et “0.0.0.0” dans un conteneur ?

Si l'application écoute sur localhost, elle ne pourra pas communiquer avec l'extérieur et seulement de manière interne au conteneur
