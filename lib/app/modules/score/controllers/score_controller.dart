import 'package:get/get.dart';
import 'package:tinkoff/app/data/models/people_model.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class ScoreController extends GetxController {
  //TODO: Implement ScoreController
  FakeService fakeService = Get.find();
  final listPeople = RxList<People>();
   FakeNetService fakeNetService = Get.find();
  final score=''.obs;

  Future<void> getPeople() async {
    listPeople.value = await fakeService.getPeople();
  }


void searchScore(){
 score.value=fakeNetService.value;
}
  @override
  void onInit()  {
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
