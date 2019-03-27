# akhomy/alpine-ngrok
FROM alpine:latest
LABEL maintainer=andriy.khomych@gmail.com
# Creates /temp_dir for using.
RUN mkdir /temp_docker && chmod -R +x /temp_docker && cd /temp_docker
# Adds config script.
RUN mkdir /root/.ngrok2 && chmod -R +x /root/.ngrok2
COPY ngrok.yml /root/.ngrok2/
# Adds our ngrok version.
ADD ngrok-stable-linux-386.zip /temp_docker/ngrok-stable-linux-386.zip
RUN cd /temp_docker && unzip /temp_docker/ngrok-stable-linux-386.zip
RUN cp /temp_docker/ngrok /usr/local/bin/
RUN chmod +x /usr/local/bin/ngrok

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# Cleans trash.
RUN rm -rf /temp_docker
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 4040
