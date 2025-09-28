# Use official n8n image
FROM n8nio/n8n:latest

# Expose the port
EXPOSE 5678

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Start n8n
CMD ["n8n", "start"]
