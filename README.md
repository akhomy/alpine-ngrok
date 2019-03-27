# NGROK image
NGROK image based on Alpine Linux.

## How to run

Run and explore other container, your web server or network IP on **IP** or **port**:

`docker run -it -p 4040:4040 -e ARGS="http 172.53.0.6:80" --name ngrok akhomy/alpine-ngrok`

Visit **localhost:4040** or **IP** where is container with **port 4040** for checking running tunnels.

For more options in `ARGS` see [NGROK official docs](https://ngrok.com/docs)

## Environment Variables

| Variable                          | Default Value | Description |
| --------------------------------- | ------------- | ----------- |
| ARGS                              |               | `$ARGS` variable in the command `ngrok $ARGS` |

## Full LAMP stack

See [Docker Compose LAMP](https://github.com/akhomy/docker-compose-lamp).
