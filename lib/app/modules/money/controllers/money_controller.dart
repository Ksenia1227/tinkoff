import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoneyController extends GetxController {
  //TODO: Implement MoneyController
  final moneyController=TextEditingController();
  final selectedIndex = 0.obs; 


   void selectContainer(int index) {
      selectedIndex.value = index;
    }

  final count = 0.obs;
  @override
  void onInit() {
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
