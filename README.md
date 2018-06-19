# dart-jsonrpc
[![CircleCI](https://circleci.com/gh/KeisukeYamashita/dart-jsonrpc.svg?style=svg&circle-token=5e4460848cf03bf59de8001ae9d7848b38cc37d2)](https://circleci.com/gh/KeisukeYamashita/dart-jsonrpc)

![image.png](https://qiita-image-store.s3.amazonaws.com/0/153320/e816b381-8c77-3937-d237-33644fbb101e.png)

dart-jsonrpc is a dart library use for interacting to your server with JSON-RPC.

## Dependencies

```bash
pub get
```

## Test

```bash
pub run test test/*
```

## Usage


```dart
var url = "https://hogehoge.com";
var params = {
    "id": 1
};
var client = new JSONRPCClient(url);
client.call("getUsername",params, (response){
    print(response.body)
})
```

## Contribution

To contribute, just send us a pull request!
If it is valid, you will be added on the contribution doc in `/doc/contributor.md` .

## License

Copyright 2018 Keisuke Yamashita.

Licensed under the Apache 2.0 license.