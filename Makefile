folder:
	mkdir -p ./models/proto;
go:
	protoc -I=. --go_out=plugins=grpc:./models/proto ./bropdox.proto

js:
	protoc -I=. --js_out=import_style=commonjs:./models/proto --grpc-web_out=import_style=commonjs,mode=grpcwebtext:./models/proto ./bropdox.proto

ts:
	protoc -I=. --js_out=import_style=commonjs:./models/proto  --grpc-web_out=import_style=typescript,mode=grpcwebtext:./models/proto ./bropdox.proto

python:
	protoc -I=. --python_out=./models/proto ./bropdox.proto