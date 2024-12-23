import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://api.example.com';

  static Future<http.Response> getVisitors() async {
    return await http.get(Uri.parse('$baseUrl/visitors'));
  }

  static Future<http.Response> addVisitor(Map<String, dynamic> visitorData) async {
    return await http.post(
      Uri.parse('$baseUrl/visitors'),
      body: visitorData,
    );
  }
}
