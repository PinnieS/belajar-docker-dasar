FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S pinngroup
RUN adduser -S -D -h /app pinnuser pinngroup
RUN chown -R pinnuser:pinngroup /app

USER pinnuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go