FROM golang:1.17-alpine
WORKDIR /docker-go
COPY go.mod ./
RUN go mod download
COPY . .
CMD ["go", "run", "main.go"]
EXPOSE 8000