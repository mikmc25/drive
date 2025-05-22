FROM node:20-slim

WORKDIR /app

# Copy only the bundled application file
COPY app.js .

# Default environment variables
ENV PORT=7860
ENV NODE_ENV=production

# Make the application executable
RUN chmod +x app.js

# Expose the port that the application uses
EXPOSE 7860

# Start the application directly
CMD ["./app.js"]