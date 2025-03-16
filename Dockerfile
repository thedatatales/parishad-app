# Use a lightweight base image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Install a simple HTTP server (BusyBox)
RUN apk add --no-cache busybox-extras

# Copy index.html to the working directory
COPY index.html /app/

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Default command to start a simple HTTP server
CMD ["httpd", "-f", "-p", "8080"]