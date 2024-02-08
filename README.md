# Applciation NodeJS & MySQl dockerisé
Note : l'application est tiré du répertoire suivant : https://github.com/fazt/crud-nodejs-mysql
![image](https://github.com/guclusefa/docker-tp-node/assets/75730989/37f3da4f-c3c5-402a-a704-e0e343f3d861)
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
## Docker Swarm
### Construction de l'application et de la base de données via Docker Swarm
Le fichier stack.yml permet de construire l'application et la base de données. Pour cela, il faut se placer dans le répertoire de l'application et exécuter les commandes suivantes:
Initialisation du swarm:
```docker swarm init```
Déploiement du stack:
```docker stack deploy -c stack.yml LE_NOM_DU_STACK```
Ensuite, nous pouvons vérifier que le stack a bien été déployé:
```docker stack ls```
Si le stack a bien été déployé, nous pouvons voir les services qui le composent:
```docker service ls```
Finalemnt, nous pouvons voir les logs de l'application (app) et de la base de données (db) avec les commandes suivantes:
```docker service logs LE_NOM_DU_SERVICE_app```
```docker service logs LE_NOM_DU_SERVICE_db```	
Notre application est maintenant déployée et accessible sur le port 3000 avec une base de données MySQL sur le port 3306 fraichement créée à partir du script SQL fourni (db.sql).
