# Usa la imagen oficial de Nginx como base
FROM nginx:latest

# Elimina la configuración por defecto
RUN rm /etc/nginx/conf.d/default.conf

# Copia tu configuración personalizada
COPY nginx.conf /etc/nginx/nginx.conf

# Expone los puertos típicos de Nginx (opcional si no vas a publicar)
EXPOSE 9001