# ---- Stage 1: Builder ----
# Use an official Node.js LTS image as a parent image.
# Alpine Linux is small and good for production.
FROM node:18-alpine AS builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and lock file
# (npm ci uses package-lock.json, yarn install uses yarn.lock, pnpm i uses pnpm-lock.yaml)
COPY package.json ./
# If using npm:
COPY package-lock.json ./
# If using yarn:
# COPY yarn.lock ./
# If using pnpm:
# COPY pnpm-lock.yaml ./

# Install dependencies
# If using npm:
RUN npm ci
# If using yarn:
# RUN yarn install --frozen-lockfile
# If using pnpm:
# RUN pnpm i --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Build the SvelteKit application for production
RUN npm run build
# This will create a 'build' directory (or whatever your adapter-node outputs to)

# ---- Stage 2: Runner ----
# Use a smaller base image for the final application
FROM node:18-alpine AS runner

WORKDIR /app

# Set NODE_ENV to production
ENV NODE_ENV=production

# SvelteKit adapter-node usually outputs a self-contained 'build' directory.
# We only need to copy this build output from the 'builder' stage.
COPY --from=builder /app/build ./build

# Copy package.json JUST for the start script and minimal runtime dependencies (if any)
# adapter-node usually bundles most things, but the start script is in the root package.json
COPY package.json ./

# Expose the port the app runs on (default for adapter-node is 3000)
# This is documentation; the actual port mapping happens in `docker run` or docker-compose
EXPOSE 3000

# Command to run the application
# The 'start' script in package.json should be something like 'node build'
# which runs build/index.js
CMD ["npm", "start"]