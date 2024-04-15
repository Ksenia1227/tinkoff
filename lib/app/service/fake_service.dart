import 'dart:math';

import 'package:get/get.dart';

class FakeService extends GetxService {
  Future<FakeService> init() async {
    return this;
  }
  final _score=200.00.obs;
  final _value=''.obs;
  Future<String> changeMoney() async {
    double contr = double.tryParse(Get.arguments)!; 
    _score.value = _score.value - contr;
    _value.value= _score.value.toString();
    await _randomDelay();
return _value.value;
  }
  String get value=> _value.value;

   Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }


}