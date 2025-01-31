# Usa una imagen oficial de Node.js como base
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json
COPY package.json yarn.lock ./

# Instala las dependencias necesarias
RUN yarn

# Copia todo el código del proyecto al contenedor
COPY . .

# Expone el puerto por el cual Next.js servirá la aplicación
EXPOSE 3000

# Define el comando de inicio
CMD ["yarn", "dev"]
