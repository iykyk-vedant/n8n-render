<<<<<<< HEAD
FROM n8n/n8n:latest

# Create app directory
WORKDIR /usr/src/app

# Copy n8n configuration
COPY . ./

# Expose the port n8n runs on
EXPOSE 5678

# Start n8n
CMD ["n8n"]
=======
# Use official n8n image
FROM n8nio/n8n:latest

# Expose the port
EXPOSE 5678

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Start n8n
CMD ["n8n", "start"]
>>>>>>> a31bd9f58b31ba5f9852872455f601ce5aecea6c
