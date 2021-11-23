import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future<dynamic> getLocationData() async {
    http.Response response = await http.get(Uri.parse(url));
    return response.body;
  }
}
