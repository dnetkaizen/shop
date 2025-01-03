# Usa la imagen base de Node.js
FROM node:18-alpine

# Crea y establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY package.json package-lock.json ./

# Instala las dependencias ignorando conflictos
RUN npm install --legacy-peer-deps

# Copia el resto de los archivos
COPY . .

# Construye la aplicación
RUN npm run build

# Expon el puerto por defecto de Next.js
EXPOSE 3000

# Define el comando de inicio
CMD ["npm", "start"]
