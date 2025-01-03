# Usa la imagen base de Node.js
FROM node:18-alpine

# Crea y establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY package.json package-lock.json ./

# Instala las dependencias
RUN npm install --legacy-peer-deps

# Copia el resto de los archivos
COPY . .

# Construye la aplicación
RUN npm run build

# Expone el puerto 3000
EXPOSE 3000

# Modifica el comando de inicio para usar el puerto de Railway
CMD ["npm", "run", "start"]
