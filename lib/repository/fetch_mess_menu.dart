import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchMenu() async {
  final url = 'https://jsonplaceholder.typicode.com/posts';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return (jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Mess Menu');
  }
}
