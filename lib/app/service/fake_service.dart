import 'dart:math';

import 'package:get/get.dart';

class FakeNetService extends GetxService {
  final _score = '200.00'.obs;
  final _wastes = '262.90'.obs;
  final minusMoney = 0.0.obs;

  Future<String> changeMoney(controller) async {
    minusMoney.value = double.tryParse(controller)!;
    double value = double.tryParse(_score.value)!;
    _score.value = (value - minusMoney.value).toStringAsFixed(2);
    await _randomDelay();
    return _score.value;
  }

  bool check(controller) {
    double sc = double.tryParse(_score.value)! - double.tryParse(controller)!;
    if (sc < 0) {
      return false;
    } else {
      return true;
    }
  }

  String get value => _score.value;
  String get waste => _wastes.value;

  Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }

  Future<String> changeWaste(controller) async {
    double contr = double.tryParse(controller)!;
    double value = double.tryParse(_wastes.value)!;
    _wastes.value = (value + contr).toStringAsFixed(2);
    await _randomDelay();
    return _wastes.value;
  }
}
