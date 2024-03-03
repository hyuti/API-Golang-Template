swagger:
	swag init -g cmd/server/main.go --parseDependency --parseInternal --parseDepth 2

unittest:
	go test ./... -v

run:
	air -c ./cmd/server/.air.conf

grpcgen:
	 protoc \
 	--proto_path=./proto/api-golang-template/;./proto/include \
 	--go_out=internal/example --go-grpc_out=internal/example \
 	./proto/api-golang-template/example.proto
