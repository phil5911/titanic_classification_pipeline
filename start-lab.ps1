# Lancement du conteneur JupyterLab
Start-Process powershell -ArgumentList @"
docker run -p 8888:8888 -v "C:\docker-dev\notebooks-dev:/workspace" jupyter-dev
"@ -NoNewWindow

# Petite pause pour laisser le conteneur démarrer
Start-Sleep -Seconds 3

# Ouvre l’URL de JupyterLab dans le navigateur par défaut
Start-Process "http://localhost:8888"
