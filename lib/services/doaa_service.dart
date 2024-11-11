import 'package:flutter/services.dart' show rootBundle;
import '../models/doaa.dart';

class DoaaService {
  Future<List<Doaa>> loadDoaaList() async {
    final List<Doaa> doaaList = [];
    try {
      String data = await rootBundle.loadString('assets/doaa.txt');
      List<String> lines = data.split("\r\n");
      for (var line in lines) {
        var parts = line.trim().split("-");
        Doaa doaa = Doaa(parts[0], int.parse(parts[1]));
        doaaList.add(doaa);
      }
    } catch (e) {
      print("Error loading doaa list: $e");
    }
    return doaaList;
  }
}
