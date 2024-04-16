import 'dart:math';

import 'package:get/get.dart';

class FakeNetService extends GetxService {
  final _score='200.00'.obs;

  Future<String> changeMoney(controller) async {
    double contr = double.tryParse(controller)!;
    double value = double.tryParse(_score.value)!; 
    _score.value= (value - contr).toString();
    print(_score.value);
    await _randomDelay();
return _score.value;
  }
  String get value=> _score.value;

   Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }


}