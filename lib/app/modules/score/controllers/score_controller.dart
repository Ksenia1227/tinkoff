import 'package:get/get.dart';
import 'package:tinkoff/app/data/models/people_model.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class ScoreController extends GetxController {
  //TODO: Implement ScoreController
  FakeService fakeService = Get.find();
  final listPeople = RxList<People>();
  FakeNetService fakeNetService = Get.find();
  final score = ''.obs;
  final waste = ''.obs;
  final bluewight = 0.0.obs;
  final yellowwight = 0.0.obs;
  final purplewight = 0.0.obs;
  final yellowMoney = 78.87.obs;

  Future<void> getPeople() async {
    listPeople.value = await fakeService.getPeople();
  }

  void changeWight() {
    var blueMoney = 131.45;
    var purpleMoney = 52.58;
    double ws = double.tryParse(waste.value)!;
    yellowMoney.value = fakeNetService.minusMoney.value + yellowMoney.value;
    bluewight.value = 100 * blueMoney / ws;
    purplewight.value = 100 * purpleMoney / ws;
    yellowwight.value = 100 * yellowMoney.value / ws;
  }

  void searchScore() {
    score.value = fakeNetService.value;
    waste.value = fakeNetService.waste;
  }

  @override
  void onInit() {
    searchScore();
    getPeople();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
