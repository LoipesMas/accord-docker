FROM rust:alpine as builder

RUN apk add musl-dev git
WORKDIR /usr/src
RUN git clone https://github.com/loipesmas/accord.git
WORKDIR /usr/src/accord
RUN cargo install --path ./server

FROM alpine:latest
COPY --from=builder /usr/local/cargo/bin/accord-server /accord-server
