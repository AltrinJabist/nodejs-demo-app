# Step 1: Use an official Node.js base image
FROM node:18

# Step 2: Set working directory in container
WORKDIR /usr/src/app

# Step 3: Copy dependency files
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the code
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Start the app
CMD ["npm", "start"]
