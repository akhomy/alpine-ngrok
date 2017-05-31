### NGROK
<p>NGROK image based on Alpine Linux.</p>


### Available options
<p>ARGS - will be putted to ngrok args command.</p>
<p>Please, visit localhost:4040 or ip where is container with port 4040 for checking runned tunnels</p>

### How to run
<p>Run and explore other container on ip or port:</p>
<code>docker run -it -e ARGS="http 172.53.0.6:80" --name ngrok lordius/alpine-ngrok</code>

