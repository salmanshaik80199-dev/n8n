# Use official n8n base image
FROM n8nio/n8n:latest

# Install Python and FFmpeg
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip ffmpeg && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Expose n8n port
EXPOSE 5678

# Run n8n
CMD ["n8n"]
