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
}