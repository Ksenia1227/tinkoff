import 'dart:math';

import 'package:get/get.dart';
import 'package:tinkoff/app/data/fakedata/fake_data_people.dart';
import 'package:tinkoff/app/data/models/people_model.dart';

class FakeService extends GetxService {

Future<List<People>> getPeople() async {
    await _randomDelay();
    return FakeDataClass.people;
  }
  Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }

}