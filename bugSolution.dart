```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Access data like jsonData['key']
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON format (e.g., log the error, display a message to the user)
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle other errors during JSON processing
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```