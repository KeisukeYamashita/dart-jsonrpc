import 'package:test/test.dart';
import '../lib/jsonrpc/jsonrpc.dart';

const testURL = "https:localhost:5000";

void main(){
  test('constructor',(){
    var client = new JSONRPCClient(testURL);
    expect(client.url,equals(testURL));
  });

  test('setHeaders',(){
    var headers = {
      "Accept": "application/json"
    };
    var client = new JSONRPCClient(testURL);
    client.setHeaders(headers);
    expect(client.headers,equals(headers));
  });

  test('call',(){
    var client = new JSONRPCClient(testURL);
    var callback = (response) {
      print(response);
    };
    var body = {
      "method": "getUsername",
      "params": {
        "id" : 2
      }
    };
    client.call(body, callback);
  });
}