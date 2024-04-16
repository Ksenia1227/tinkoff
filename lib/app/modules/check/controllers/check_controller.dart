import 'package:get/get.dart';
import 'package:tinkoff/app/modules/main/controllers/main_controller.dart';
import 'package:tinkoff/app/modules/money/controllers/money_controller.dart';
import 'package:tinkoff/app/modules/score/controllers/score_controller.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class CheckController extends GetxController {
  //TODO: Implement CheckController
  FakeNetService fakeNetService = Get.find();
  final score = ''.obs;
  final oldscore = ''.obs;
  final outgoingMoney = ''.obs;
  var mainController = Get.find<MainController>();
  var scoreController = Get.find<ScoreController>();
  var moneyController = Get.find<MoneyController>();

  void searchScore() {
    score.value = fakeNetService.value;
    double sc= double.parse(fakeNetService.value);
    double outg = double.parse(moneyController.moneyController.text);
    oldscore.value = (sc+outg).toString();
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
