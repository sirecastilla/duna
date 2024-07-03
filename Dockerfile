# Usamos una imagen base con un servidor web, por ejemplo nginx
FROM nginx:latest

# Copiamos los archivos HTML de tu carpeta local 'Tienda' al directorio de trabajo en el contenedor de Docker
COPY ./ /usr/share/nginx/html/

# Exponemos el puerto 80, que es el puerto por defecto en el que nginx sirve contenido web
EXPOSE 80

# Comando para iniciar el servidor web al ejecutar el contenedor
CMD ["nginx", "-g", "daemon off;"]

