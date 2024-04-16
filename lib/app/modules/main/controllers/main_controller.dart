import 'package:get/get.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class MainController extends GetxController {
  //TODO: Implement MainController
  final selectedIndex = 0.obs;
  FakeNetService fakeNetService = Get.find();
  final score = ''.obs;
  final listt = [
    'Взять деньги',
    'Копить',
    'Инвестировать от 5 P',
    'Выпустить карту',
    'Оформить страховку'
  ].obs;
  final listpicture = [
    'assets/company/feya.jpg',
    'assets/company/lapenko.jpg',
    'assets/company/ponchiki.jpg',
    'assets/company/blue.jpg'
  ].obs;
  final listtext = ['Весенняя', 'Трэвел', 'Какие у вас', 'Фича'].obs;
  final listtext1 = ['коллекция', 'истории', 'тайные', 'недели'].obs;
  final listtext2 = ['титулов', 'Лапенко', 'пристрастия?', ''].obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  final waste = ''.obs;

  RxList<String> get list => listt;
  RxList get picture => listpicture;
  RxList get text => listtext;
  RxList get text1 => listtext1;
  RxList get text2 => listtext2;

  @override
  void onInit() {
    searchScore();
    super.onInit();
  }

  void searchScore() {
    score.value = fakeNetService.value;
    waste.value = fakeNetService.waste;
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
