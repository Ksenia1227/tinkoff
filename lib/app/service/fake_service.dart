import 'dart:math';

import 'package:get/get.dart';

class FakeNetService extends GetxService {
  final _score = '200.00'.obs;
  final _wastes = '262.90'.obs;

  Future<String> changeMoney(controller) async {
    double contr = double.tryParse(controller)!;
    double value = double.tryParse(_score.value)!;
    _score.value = (value - contr).toStringAsFixed(2);
    await _randomDelay();
    return _score.value;
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
