FROM n8n/n8n:latest

# Create app directory
WORKDIR /usr/src/app

# Copy n8n configuration
COPY . ./

# Expose the port n8n runs on
EXPOSE 5678

# Start n8n
CMD ["n8n"]