// lib/features/home/data/services/home_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inventi_exam/features/home/models/random_string_model.dart';

class HomeService {
  Future<RandomString> fetchRandomString() async {
    final url = Uri.parse('https://o7q6ka26qs232rmbtpbrxghy6u0vyrup.lambda-url.ap-southeast-1.on.aws/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return RandomString.fromJson(jsonData);
    } else {
      throw Exception('Failed to load random string');
    }
  }
}
