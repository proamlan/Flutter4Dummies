import 'package:http/http.dart' as https;
import 'package:logger/logger.dart';

Future<String> callApi() async {
  var logger = Logger();
  const url =
      "https://api.mockfly.dev/mocks/74c3642e-b0ab-4514-8da4-93562faa32df/hello";
  final response = await await https.get(Uri.parse(url));
  if (response.statusCode == 200) {
    logger.e("Got Response: " + response.body.toString());
    return "Got Fucker";
  } else {
    logger.e("Some error ${response.body}");
    return "Got Lehsun";
  }
}
