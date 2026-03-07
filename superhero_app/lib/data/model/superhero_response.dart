import 'package:superhero_app/data/model/superhero_details_response.dart';

class SuperheroResponse {
  final String response;
  final List<SuperheroDetailsResponse> result;

  SuperheroResponse({required this.response, required this.result});

  factory SuperheroResponse.fromJson(Map<String, dynamic> json) {
    var list = json["results"] as List;
    List<SuperheroDetailsResponse> heroList = list.map((hero) => SuperheroDetailsResponse.fromJson(hero)).toList();

    return SuperheroResponse(response: json["response"], result: heroList);
  }
}

