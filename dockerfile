FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy app files
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
