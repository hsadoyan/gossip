# Gossip

A Phoenix application that can be easily deployed using Docker.

## Quick Start with Docker

The easiest way to run Gossip is using Docker:

1. **Create a `.env` file** (required):
   ```bash
   cp .env.example .env
   ```
   Edit .env and set SECRET_KEY_BASE (generate with: mix phx.gen.secret)

2. **Start the application**:
   ```bash
   docker compose up
   ```

This will start the application on [http://localhost:4000](http://localhost:4000).

## Development

### Using Docker 

For development with live code reloading:

```bash
docker compose -f docker-compose.dev.yml up dev
```

Run tests in Docker:

```bash
docker compose -f docker-compose.dev.yml run --rm test
```

### Without Docker

If you have Elixir 1.19+ and Erlang/OTP 28+ installed locally:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Deployment

Build the production Docker image:

```bash
docker compose build
```

Run in production mode:

```bash
docker compose up -d
```

Make sure to set the `SECRET_KEY_BASE` environment variable in production. Generate one with:

```bash
mix phx.gen.secret
```

## Configuration

The application can be configured using environment variables:

* `PORT` - HTTP port (default: 4000)
* `PHX_HOST` - Hostname (default: localhost)
* `SECRET_KEY_BASE` - Secret key for encryption (required in production)
* `DATABASE_PATH` - Path to SQLite database file (default: /app/data/gossip.db)

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
