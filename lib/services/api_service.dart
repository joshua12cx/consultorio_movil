import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://localhost:8080/api/users"; // Cambia por la URL real

  Future<Map<String, dynamic>> login(String username, String password) async {
    final url = Uri.parse("$baseUrl/login");
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"username": username, "password": password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data["success"]) {
        return {"success": true, "user": data["data"]};
      } else {
        return {"success": false, "message": data["message"]};
      }
    } else {
      return {"success": false, "message": "Error al conectar con el servidor"};
    }
  }
}
