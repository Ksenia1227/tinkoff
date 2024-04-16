import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/modules/check/controllers/check_controller.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class MoneyController extends GetxController {
  //TODO: Implement MoneyController
  final moneyController = TextEditingController();
  final selectedIndex = 0.obs;
  final currentPeople=''.obs;
  FakeNetService fakeNetService = Get.find();
  FakeService fakeService = Get.find();
  final score = ''.obs;
  final openPageCount = 0.obs; 

 
  void checkAndSearchScore() { 
    openPageCount.value=1+openPageCount.value; 
    if (openPageCount.value > 1) { 
      var checkController = Get.find<CheckController>(); 
      checkController.searchScore(); 
    } 
  }

  void selectContainer(int index) {
    selectedIndex.value = index;
  }

  void searchScore() {
    score.value = fakeNetService.value;
  }

  void transferMoney(){
    fakeNetService.changeMoney(moneyController.text);
  }

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
}
