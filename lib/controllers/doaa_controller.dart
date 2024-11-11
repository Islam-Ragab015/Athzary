import '../models/doaa.dart';
import '../services/doaa_service.dart';

class DoaaController {
  final DoaaService _doaaService = DoaaService();
  List<Doaa> doaaList = [];

  Future<void> loadDoaas() async {
    doaaList = await _doaaService.loadDoaaList();
  }

  void decrementCount(int index) {
    if (index >= 0 && index < doaaList.length) {
      doaaList[index].count--;
      if (doaaList[index].count == 0) {
        doaaList.removeAt(index);
      }
    }
  }
}
