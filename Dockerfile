# Use official n8n image
FROM n8nio/n8n

# Expose n8n's port
EXPOSE 5678

# Start n8n when container runs
CMD ["n8n"]
