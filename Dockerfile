FROM loipesmas/accord:alpine

# Add docker-compose-wait tool
ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

COPY config.toml /root/.config/accord-server/config.toml

EXPOSE 13723
