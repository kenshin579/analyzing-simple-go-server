FROM golang:buster

WORKDIR /app
ADD . .
RUN go build -o /usr/local/bin/simple-go-server

EXPOSE 4000
CMD ["/usr/local/bin/simple-go-server"]