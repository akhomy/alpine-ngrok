# NGROK image for LAMP stack
NGROK image based on Alpine Linux.

## How to run

Run and explore other container on **IP** or **port**:

`docker run -it -e ARGS="http 172.53.0.6:80" --name ngrok lordius/alpine-ngrok`

Visit **localhost:4040** or **IP** where is container with **port 4040** for checking running tunnels.

## Environment Variables

| Variable                          | Default Value | Description |
| --------------------------------- | ------------- | ----------- |
| ARGS                              |               | `$ARGS` variable in the command `ngrok $ARGS` |

## Full LAMP stack

See [docker-compose-lamp](https://github.com/a-kom/docker-compose-lamp)
