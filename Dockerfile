# Menggunakan base image node versi 14
FROM node:14-alpine

# Menentukan Working Directory
WORKDIR /app

# Manyalin Source Code
COPY . .

# Menentukan Environment Variable
ENV NODE_ENV=production DB_HOST=item-db 

# Install Dependencies
RUN npm install --production --unsafe-perm && npm run build

# Mengekspose Port Container
EXPOSE 8080

# Jalankan Container
CMD [ "npm", "start" ]