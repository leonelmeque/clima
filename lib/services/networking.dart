import 'package:http/http.dart' as fetch;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    fetch.Response res = await fetch.get(url);
    if (res.statusCode == 200) {
      String data = res.body;

      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}
