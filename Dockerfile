FROM nginx:alpine

# Copia los archivos estáticos a la carpeta default de nginx
COPY public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
