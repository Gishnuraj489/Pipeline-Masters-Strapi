# Dockerfile.dev
FROM node:18

WORKDIR /app

COPY ./your-strapi-app/package*.json ./

RUN npm install

# Copy rest of the code (optional for dev, but safe)
COPY ./your-strapi-app .

EXPOSE 1337

CMD ["npm", "run", "develop"]
