# Utilisez l'image Python officielle
FROM python:3.8

# Créez et définissez le répertoire de travail
WORKDIR /app

# Copiez le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copiez le reste des fichiers dans le conteneur
COPY . .

# Exposez le port sur lequel le serveur Django fonctionnera
EXPOSE 8000

# Commande pour démarrer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
