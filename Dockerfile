# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM node:lts-alpine

WORKDIR /app

# Copy package manifests
COPY package*.json ./

# Install dependencies (skip scripts since build script will handle permissions etc.)
RUN npm install --ignore-scripts

# Copy the source code
COPY . .

# Build the project
RUN npm run build

# Expose any necessary port if needed (not specified, so optional)

CMD ["node", "build/index.js"]
