# ---- Stage 1: dependencies ----
FROM node:20-alpine AS deps

WORKDIR /app

# Copier uniquement les fichiers nécessaires pour installer les deps
COPY package*.json ./

# Installer uniquement les dépendances de production
RUN npm ci --omit=dev

# ---- Stage 2: runtime ----
FROM node:20-alpine

WORKDIR /app

# Définir NODE_ENV
ENV NODE_ENV=production

# Copier les node_modules depuis le stage précédent
COPY --from=deps /app/node_modules ./node_modules

# Copier le code source
COPY app.js ./

# Créer un utilisateur non-root
RUN addgroup -S nodegroup && adduser -S nodeuser -G nodegroup

# Utiliser cet utilisateur
USER nodeuser

# Exposer le port (aligné avec ton app)
EXPOSE 3000

# Commande de démarrage
CMD ["node", "app.js"]