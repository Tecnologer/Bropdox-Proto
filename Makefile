folder:
	mkdir -p ./models/proto;
go:
	protoc --go_out=../models/proto --go_opt=paths=source_relative --go-grpc_out=../models/proto --go-grpc_opt=paths=source_relative ./bropdox.proto

js:
	protoc -I=. --js_out=import_style=commonjs:./models/proto --grpc-web_out=import_style=commonjs,mode=grpcwebtext:./models/proto ./bropdox.proto

ts:
	protoc -I=. --js_out=import_style=commonjs:./models/proto  --grpc-web_out=import_style=typescript,mode=grpcwebtext:./models/proto ./bropdox.proto

python:
	protoc -I=. --python_out=./models/proto ./bropdox.proto