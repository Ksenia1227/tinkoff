import 'package:get/get.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class CheckController extends GetxController {
  //TODO: Implement CheckController
   FakeNetService fakeNetService = Get.find();
 final score = ''.obs;
 final outgoingMoney=''.obs;
 void searchScore() {
    score.value = fakeNetService.value;
  }
  // String oldScore() {
  //   double sc=double.parse(score.value);
  //   double minsc= double.parse(outgoingMoney.value);
  //   print(minsc);
  //   String newsc=(sc-minsc).toString();
  //   print(newsc);
  //   return newsc;
  // }

  final count = 0.obs;
  @override
  void onInit() {
    searchScore();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
