# Stage 1: Build de l'application
FROM node:latest AS builder

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers nécessaires
COPY package.json package-lock.json /app/

# Installation des dépendances, dans un environnement de production pour éviter les dépendances de développement
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

# Commande de démarrage de l'application
CMD ["npm", "start"]