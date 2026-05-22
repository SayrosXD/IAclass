# Imagen ligera de Nginx
FROM nginx:alpine

# Eliminar archivos por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar todos los archivos del proyecto
COPY . /usr/share/nginx/html

# Exponer puerto para Render
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]