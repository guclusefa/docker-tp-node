# Applciation NodeJS & MySQl dockerisé
Note : l'application est tiré du répertoire suivant : https://github.com/fazt/crud-nodejs-mysql
## Dockerfile
### Construction de l'application via Dockerfile
Le fichier Dockerfile permet de construire l'image de l'application NodeJS & MySQL. Pour cela, il faut se placer dans le répertoire de l'application et exécuter la commande suivante:
```docker build -t LE_NOM_DE_L_IMAGE .```
Cela va construire l'image de l'application avec le nom spécifié.
### Lancement de l'application
Pour lancer l'application, il faut exécuter la commande suivante:
```docker run -it -p 3000:3000 LE_NOM_DE_L_IMAGE```
Cela va lancer l'application sur le port 3000, en mode interactif permettant de voir les logs de l'application.
## Docker Compose
### Construction de l'application et de la base de données via Docker Compose
Le fichier compose.yml permet de construire l'application et la base de données. Pour cela, il faut se placer dans le répertoire de l'application et exécuter la commande suivante:
```docker-compose up```
Cela va construire l'application et la base de données, et les lancer. L'application sera accessible sur le port 3000 avec une base de données MySQL sur le port 3306 fraichement créée à partir du script SQL fourni (db.sql).