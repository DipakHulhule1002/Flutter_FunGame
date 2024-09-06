// lib/services/auth_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String _baseUrl = 'http://127.0.0.1:8081/fungame/api';

  Future<http.Response> registerUser(String username, String password,
      String email, String mobileNumber) async {
    try {
      print("In Request");
      final url = Uri.parse('http://192.168.31.133:8081/fungame/api/bet');
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        // body: jsonEncode({
        //   'userName': username,
        //   'password': password,
        //   'emailAddress': email,
        //   'mobileNumber': mobileNumber,
        // }),''''
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return response;
    } catch (e) {
      print('Request failed with error: $e');
      rethrow; // Optional: rethrow the error to be handled elsewhere
    }
  }
}
