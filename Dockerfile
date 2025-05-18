FROM oven/bun:latest
WORKDIR /app
COPY . .
EXPOSE 9516
CMD ["bun", "index.js"]