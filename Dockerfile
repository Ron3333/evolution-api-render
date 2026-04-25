# Evolution API - Dockerfile para Render
FROM atendai/evolution-api:v2.1.1

# Las variables de entorno se configurarán en Render
# El puerto 8080 es el que usa Evolution API por defecto
EXPOSE 8080

# El comando de inicio ya está configurado en la imagen base
# Variables por defecto para SQLite
ENV DATABASE_ENABLED=true
ENV DATABASE_PROVIDER=sqlite
ENV DATABASE_CONNECTION_URI=/evolution/store/evolution.db

# Exponer el puerto
EXPOSE 8080

# Comando para iniciar
CMD ["node", "dist/src/main.js"]
