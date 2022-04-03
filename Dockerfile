FROM golang:1.18 AS builder
WORKDIR /app
COPY /src .
RUN go build desafio.go

FROM scratch AS production
COPY --from=builder /app/desafio .
ENTRYPOINT [ "./desafio" ]
