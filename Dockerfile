FROM node:current-alpine3.10

# Install server packages
WORKDIR /home/node/selfcheck-app/
COPY package*.json ./ 
RUN npm install
# Install client packages
COPY client/package*.json ./client/
RUN cd client && \
	npm install

# Copy code across
COPY . .

# Build now that code is available
RUN cd client && \
	npm run build

# Start the server
CMD ["node", "main.js"]
