# n8n on Render

This repository contains the necessary files to deploy [n8n](https://n8n.io/) on [Render](https://render.com/).

## Deployment

1. Fork this repository to your GitHub account
2. Sign up or log in to your Render account
3. Click the "New +" button and select "Web Service"
4. Connect Render to your GitHub account when prompted
5. Select the forked repository
6. Render will automatically detect this is a Docker service via the [render.yaml](file://d:\n8n-render\render.yaml) configuration
7. Give your service a name (e.g., "n8n-workflows")
8. Select the region closest to you
9. Render will automatically use the environment variables defined in [render.yaml](file://d:\n8n-render\render.yaml)
10. Click "Create Web Service"
11. Wait for the build and deployment to complete (this may take a few minutes)
12. Once deployed, access your n8n instance at the URL provided by Render

## Environment Variables

Render will automatically configure these environment variables from [render.yaml](file://d:\n8n-render\render.yaml):

- `N8N_PROTOCOL`: Set to `https` for Render
- `N8N_PORT`: Set to `5678`
- `NODE_ENV`: Set to `production`
- `N8N_ENCRYPTION_KEY`: Automatically generated secure key

Additional environment variables can be added in the Render dashboard:

- `N8N_PUBLIC_URL`: Your Render service URL (important for OAuth callbacks)
- Database connection variables if using an external database

## Local Development

You can also run n8n locally using Docker Compose:

```bash
docker-compose up -d
```

This will start both n8n and a PostgreSQL database.

Access n8n at http://localhost:5678

## Notes

- The `render.yaml` file is used for automatic deployment on Render
- Data persistence in a free tier Render service requires external database configuration
- For production use, consider upgrading to a paid Render plan for better performance and persistent storage