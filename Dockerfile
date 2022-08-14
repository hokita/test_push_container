# linux/arm64/v8
FROM golang:1.19.0-alpine@sha256:24bd9ec1f81942951499f9ebe5d7c95ea42355a0c65a8593a0f73d93a26da223
WORKDIR /usr/src/app
COPY . .
RUN GOOS=linux GOARCH=arm64 go build -v -o /usr/local/bin/app ./main.go
CMD ["app"]
