// Copyright (c) 2018, the project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// Apache-2.0 license that can be found in the LICENSE file.
import 'package:http/http.dart' as http;

class JSONRPCClient {
  String url;
  Map headers;

  JSONRPCClient(url){
    this.url = url;
  }

// setHeader sets header for request
  setHeaders(headers){
    if (!(headers is Map){
      return new TypeError();
    }
    this.headers = headers;
  }

  call(method,params,callback(response)){
    var timeStamp = new DateTime.now().millisecondsSinceEpoch;
    var body = {
      'jsonrpc': "2.0",
      'method': method,
      'params': params,
      'id': timeStamp,
    };
    http.post(url,body:body, headers: this.headers)
      .then((response){
        callback(response);
      });
  }
}