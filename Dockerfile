FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod 

COPY . .

RUN go build -o main

CMD ["./main"]
