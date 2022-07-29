import 'package:freelion/config/api_json.dart';
import 'package:freelion/config/api_keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  bool isTestingData = true;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = "0"}) async {
    try {
      if (!isTestingData) {
        String q = queryTerm.contains(" ")
            ? queryTerm.split(' ').join('%10')
            : queryTerm;
        // let say we search "Codeforces contest" then it will mean array of two element
        // atcoder%20contest

        final response = await http.get(Uri.parse(
            "https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start"));

        if (response.statusCode == 200) {
          final jsonData = response.body;
          final responseData = json.decode(jsonData);
          return responseData;
        }
      }
    } catch (e) {
      print(e.toString());
    }

    return apiResponse;
  }
}
