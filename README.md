# n8n on Render

This repository contains the necessary files to deploy [n8n](https://n8n.io/) on [Render](https://render.com/).

## Deployment

1. Fork this repository
2. Create a new Web Service on Render
3. Connect it to your forked repository
4. Set the build command to `docker build -t n8n .`
5. Set the start command to `docker run -p 5678:5678 n8n`
6. Add environment variables as needed

## Environment Variables

- `N8N_PROTOCOL`: Set to `https` for Render
- `N8N_PORT`: Set to `5678`
- `NODE_ENV`: Set to `production`
- `N8N_ENCRYPTION_KEY`: Generate a secure encryption key

## Local Development

You can also run n8n locally using Docker Compose:

```bash
docker-compose up -d
```

This will start both n8n and a PostgreSQL database.

Access n8n at http://localhost:5678

## Notes

- The `render.yaml` file is used for automatic deployment on Render
- Data is persisted in the `n8n_data` volume
- PostgreSQL data is persisted in the `postgres_data` volume