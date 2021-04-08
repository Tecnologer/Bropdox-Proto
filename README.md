# Bropdox

Protobuff definition for remote File manager.

## Requeriments

1. Install [protobuffer][1]
2. For golang
   - [Proto-gen-go][2]
   - Install protoc [plugin][5]
3. For [Python][6]

## Sintax

```bash
protoc -I=<INPUT_FOLDER> --<PLUGIN>=[OPTIONS:]<OUPUT_FOLFER> <input_proto_file>
```

### Example

```bash
# Golang
protoc -I=. --go_out=plugins=grpc:../server/models/proto ./bropdox.proto

# Python
protoc -I=. --python_out=./models/proto ./bropdox.proto
```

[1]: https://developers.google.com/protocol-buffers/docs/downloads
[2]: https://github.com/golang/protobuf
[3]: https://www.npmjs.com/package/grpc-web
[4]: Proto-gen-js
[5]: https://pkg.go.dev/github.com/golang/protobuf/protoc-gen-go/plugin
[6]: https://developers.google.com/protocol-buffers/docs/pythontutorial
