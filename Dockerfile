# Étape 1 : Utiliser une image de Node.js comme image de base
FROM node:18

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier tout le reste du code source dans le conteneur
COPY . .

# Étape 6 : Construire l'application ReactJS
RUN npm run build

# Étape 7 : Exposer le port sur lequel l'application sera exécutée
EXPOSE 3000

# Étape 8 : Lancer l'application (généralement dans un serveur HTTP)
CMD ["npm", "start"]
