# Custom Docker for Nuxt app

Installation:
1) npx nuxi@latest init . -t ui

Start the development server on http://localhost:3000:
0) enter to container
1) cd nuxt-ui-app
2) npm run dev




# Old
# Dockerized Nuxt 3 Starter

Working with Docker containers is a convinient way to seperate local machines ressources and configuration from development environments. This minimal project is a starter for creating dockerized [Nuxt 3](https://github.com/nuxt/framework) applications.

## Prerequisites

Make sure that [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) are installed on your local machine.

## Setup

Start the development server on http://localhost:3000

```bash
docker compose up
```


## Production 
🚧 WIP

Build the docker container for production:

```bash
docker build -t nuxt_build .
```

Run nuxt build inside the container:

```bash
docker run -it nuxt_build npm run build
```

Checkout the official Nuxt 3 [deployment documentation](https://v3.nuxtjs.org/guide/deploy/presets) for more information.

# Nuxt UI Minimal Starter

Look at [Nuxt docs](https://nuxt.com/docs/getting-started/introduction) and [Nuxt UI docs](https://ui.nuxt.com) to learn more.

## Setup

Make sure to install the dependencies:

```bash
# npm
npm install

# pnpm
pnpm install

# yarn
yarn install

# bun
bun install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev

# pnpm
pnpm run dev

# yarn
yarn dev

# bun
bun run dev
```

## Production

Build the application for production:

```bash
# npm
npm run build

# pnpm
pnpm run build

# yarn
yarn build

# bun
bun run build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm run preview

# yarn
yarn preview

# bun
bun run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
