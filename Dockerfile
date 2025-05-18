# Base image with Node.js LTS
FROM node:18-slim

# Create app directory
WORKDIR /app

# Copy only bundled output
COPY bundled.js ./

# Expose the port (must match the one in your code, here it's 3005)
EXPOSE 3005

# Set the command to run your bundled Node.js app
CMD ["node", "bundled.js"]
