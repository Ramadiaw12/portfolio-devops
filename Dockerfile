FROM nginx:alpine

# Métadonnées de l'image
LABEL org.opencontainers.image.title="portfolio-devops" \
      org.opencontainers.image.description="Portfolio HTML/CSS/JavaScript servi par Nginx"

# Copie du site dans le dossier servi par Nginx
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY images/ /usr/share/nginx/html/images/
COPY interface/ /usr/share/nginx/html/interface/
COPY fav/ /usr/share/nginx/html/fav/

# Rendre les fichiers lisibles par Nginx
RUN chmod -R a+rX /usr/share/nginx/html

# Port écouté par Nginx dans le conteneur
EXPOSE 80
