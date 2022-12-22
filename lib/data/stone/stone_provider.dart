import 'package:flutter/material.dart';
import 'package:rocllection/data/stone/stone_model.dart';
import 'package:rocllection/services/stone/stone_service.dart';

class StoneProvider with ChangeNotifier {
  List<Stone> _stones = [
    Stone(
      id: '1',
      name: 'Stone 1',
      description: 'Short description',
      imageUrl:
          'https://www.thoughtco.com/thmb/OSJY6PDpC4WJSaQMyKF8KEgsGnk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Olivine-58bd84db5f9b58af5cbd7fff.jpg',
      addedDate: DateTime.now().toString(),
      color: '0xff2d3f00',
    ),
    Stone(
      id: '2',
      name: 'Stone 2',
      description: 'Short description',
      imageUrl:
          'https://www.thoughtco.com/thmb/OSJY6PDpC4WJSaQMyKF8KEgsGnk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Olivine-58bd84db5f9b58af5cbd7fff.jpg',
      addedDate: DateTime.now().toString(),
      color: '0xff2d3f00',
    ),
    Stone(
      id: '3',
      name: 'Stone 3',
      description: 'Short description',
      imageUrl:
          'https://www.thoughtco.com/thmb/OSJY6PDpC4WJSaQMyKF8KEgsGnk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Olivine-58bd84db5f9b58af5cbd7fff.jpg',
      addedDate: DateTime.now().toString(),
      color: '0xff2d3f00',
    ),
    Stone(
      id: '4',
      name: 'Stone 4',
      description: 'Short description',
      imageUrl:
          'https://www.thoughtco.com/thmb/OSJY6PDpC4WJSaQMyKF8KEgsGnk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Olivine-58bd84db5f9b58af5cbd7fff.jpg',
      addedDate: DateTime.now().toString(),
      color: '0xff2d3f00',
    ),
  ];

  List<Stone> get stones => _stones;

  void addStone(Stone stone) {
    _stones.add(stone);
    notifyListeners();
  }

  void removeStone(Stone stone) {
    _stones.remove(stone);
    notifyListeners();
  }

  void updateStone(Stone stone) {
    final index = _stones.indexWhere((element) => element.id == stone.id);
    _stones[index] = stone;
    notifyListeners();
  }

  void loadAllStones() async {
    _stones.clear();
    List<Stone> stonesFromDB = await StoneService.getStoneList();
    _stones.addAll(stonesFromDB);
    notifyListeners();
  }

  Stone getStone(String id) {
    return _stones.firstWhere((element) => element.id == id);
  }

  void clear() {
    _stones.clear();
    notifyListeners();
  }

  void addAll(List<Stone> stones) {
    _stones.addAll(stones);
    notifyListeners();
  }

  void addAllUnique(List<Stone> stones) {
    for (final stone in stones) {
      if (!_stones.any((element) => element.id == stone.id)) {
        _stones.add(stone);
      }
    }
    notifyListeners();
  }
}
