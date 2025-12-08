# Use the official Ubuntu image as the base
FROM ubuntu:latest

# Set the working directory inside the container (optional)
WORKDIR /app

# Install curl in the container
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Command to run when the container starts
CMD ["curl", "--version"]
