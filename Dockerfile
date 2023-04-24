FROM golang:buster

WORKDIR /app
ADD . .
RUN go build -o /usr/local/bin/simple-go-server

EXPOSE 8080
CMD ["/usr/local/bin/simple-go-server"]