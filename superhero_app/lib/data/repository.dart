import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:superhero_app/data/model/superhero_response.dart';

class Repository {
  Future<SuperheroResponse?> fetchSuperHeroInfo(String name) async {
    final response = await http.get(
      Uri.parse(
        "https://superheroapi.com/api/9f47284d55cc8af8573fa1552cbb3404/search/$name",
      ),
    );
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      SuperheroResponse superheroResponse = SuperheroResponse.fromJson(
        decodedJson,
      );
      return superheroResponse;
    } else {
      return null;
    }
  }
}
