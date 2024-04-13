import 'package:get/get.dart';

class FakeService extends GetxService {
  Future<FakeService> init() async {
    return this;
  }
final score = 2000.obs;


}