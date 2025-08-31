# Use Debian-based n8n image
FROM n8nio/n8n:latest-debian

# Switch to root to install packages
USER root

# Install Python and FFmpeg
RUN apt-get update && \
    apt-get install -y python3 python3-pip ffmpeg && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
