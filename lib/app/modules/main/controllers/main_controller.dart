import 'package:get/get.dart';

class MainController extends GetxController {
  //TODO: Implement MainController
  final selectedIndex=0.obs;
  final listt=['Взять деньги','Копить','Инвестировать от 5 P', 'Выпустить карту','Оформить страховку'].obs;
  final listpicture =['assets/company/feya.jpg', 'assets/company/lapenko.jpg', 'assets/company/ponchiki.jpg','assets/company/blue.jpg'].obs;
final listtext = ['Весенняя', 'Трэвел', 'Какие у вас', 'Фича'].obs;
final listtext1 = ['коллекция', 'истории', 'тайные', 'недели'].obs;
final listtext2 = ['титулов', 'Лапенко', 'пристрастия?', ''].obs;
void onItemTapped(int index) {
      selectedIndex.value = index;
  }

  RxList<String> get list => listt;
  RxList get picture => listpicture;
  RxList get text => listtext;
  RxList get text1 => listtext1;
  RxList get text2 => listtext2;
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

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
