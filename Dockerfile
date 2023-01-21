FROM node:18.13.0-alpine3.17
LABEL authors="Codecooler"

# Sets the working directory (it will be created if it doesn't exist)
WORKDIR /app

COPY . .

# Update each dependency in package.json to the latest version
RUN npm install \
    && npm install -g npm-check-updates \
    && ncu -u \
    && npm install

# If you are building your code for production
# npm ci will install dependencies from package-lock.json
RUN npm ci --only=production

EXPOSE 5000

CMD [ "node", "index.js" ]