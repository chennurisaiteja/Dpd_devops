# Use official Go image
FROM golang:1.22-alpine

# Set working directory
WORKDIR /app

# Copy go source code
COPY . .

# Build the Go app
RUN go build -o service1 main.go

# Expose the port
EXPOSE 8001

# Run the binary
CMD ["./service1"]

