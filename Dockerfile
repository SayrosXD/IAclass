# Usa Nginx ligero
FROM nginx:alpine

# Elimina archivos por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia todos los archivos del proyecto
COPY . /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Inicia nginx
CMD ["nginx", "-g", "daemon off;"]