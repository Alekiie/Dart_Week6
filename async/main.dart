import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  print("Starting the program:");
  String result = await fetchData();
  print("The result of data fetched is: $result");
}

Future<String> fetchData() async {
  final client = HttpClient();
  final url = Uri.parse('https://jsonplaceholder.typicode.com/users/');

  try {
    final request = await client.getUrl(url);
    final response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      final responseBody = await response.transform(utf8.decoder).join();
      return responseBody;
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } finally {
    client.close();
  }
}
