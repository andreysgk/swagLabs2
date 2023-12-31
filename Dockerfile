FROM node:18
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
RUN npx playwright install
RUN npx playwright install --with-deps
COPY . . 
CMD ["npm", "test"]