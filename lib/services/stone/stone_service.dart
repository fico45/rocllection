import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/utils/dummy_data.dart';

class StoneService {
  static Future<List<Stone>> getStoneList() async {
    List jsonResponse = fakeStoneData;
    return jsonResponse.map((stone) => Stone.fromJson(stone)).toList();

    //final response = await Api.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    /* if (response.statusCode == 200) {
    List jsonResponse = fakeStoneData;
    return jsonResponse.map((stone) => Stone.fromJson(stone)).toList();
  } else {
    throw Exception('Failed to load stone list');
  } */
  }
}
