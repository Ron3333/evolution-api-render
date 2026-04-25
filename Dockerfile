# Evolution API - Dockerfile para Render
FROM atendai/evolution-api:v2.1.1

# El puerto 8080 es el que usa Evolution API por defecto
EXPOSE 8080

# NO definas DATABASE_* aquí. Déjalo vacío para que Render las configure.
# Elimina las líneas ENV que tenías antes.

# El comando de inicio ya está configurado en la imagen base
CMD ["node", "dist/src/main.js"]
