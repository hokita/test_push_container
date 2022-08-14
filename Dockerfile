FROM golang:1.19.0-alpine
WORKDIR /usr/src/app
COPY . .
RUN go build -v -o /usr/local/bin/app ./main.go
CMD ["app"]
