FROM golang:1.16

WORKDIR /go/src

RUN apt-get update
RUN apt install -y protobuf-compiler

RUN go get github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway
RUN go get google.golang.org/protobuf/cmd/protoc-gen-go@v1.25.0
RUN go get google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1.0

CMD ["tail", "-f", "/dev/null"]
