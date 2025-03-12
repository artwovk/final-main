FROM golang:1.24.1

ENTRYPOINT ["./parcel-tracker"]

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o parcel-tracker main.go

CMD ["/main"]
