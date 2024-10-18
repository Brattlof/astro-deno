# Use a base image with Deno installed
FROM denoland/deno:2.0.2

# Set the working directory
WORKDIR /app

# Copy your files to the working directory
COPY . .

# Pre-fetch dependencies based on the main entrypoint
RUN deno install

# Build
RUN deno task build

# Run the Astro app
CMD ["task", "start"]
