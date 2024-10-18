import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {

  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/?_limit1'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    
    for (var post in data) {
      print('${post['title'].toUpperCase()}');
      print('${post['body']}\n\n');
    }
  } else {
    print('Error: ${response.statusCode}');
  }
}

void main() {
  fetchData();
}

