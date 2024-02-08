# Stage 1: Build de l'application
FROM node:latest AS builder

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers nécessaires
COPY package.json package-lock.json /app/

# Installation des dépendances
RUN npm install --only=production

# Copie du reste des fichiers
COPY . /app

# Stage 2: Runtime
FROM node:latest

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers construits à partir de l'étape précédente
COPY --from=builder /app .

# Exposition du port approprié
EXPOSE 3000

# Définition des variables d'environnement pour la base de données
ENV DB_HOST=localhost
ENV DB_USER=root
ENV DB_PASSWORD=
ENV DB_NAME=docker-app

# Commande de démarrage de l'application
CMD ["npm", "start"]