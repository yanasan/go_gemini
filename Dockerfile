FROM golang:1.19-alpine

WORKDIR /app

RUN go init go_gemini

COPY go.mod go.sum ./

RUN go mod 

COPY . .

RUN go build -o main

CMD ["./main"]
