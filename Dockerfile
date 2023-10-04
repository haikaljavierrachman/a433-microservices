# Menentukan base image
FROM node:14-alpine

# Menentukan working directory
WORKDIR /app

# Mengcopy package.json & package-lock.json
COPY package*.json .

# Install dependencies
RUN npm Install

# Copy source code
COPY . .

# ekspose port
EXPOSE 3000

# jalankan
CMD [ "npm", "run", "start" ]
