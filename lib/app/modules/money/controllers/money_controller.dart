import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';

class MoneyController extends GetxController {
  //TODO: Implement MoneyController
  final moneyController=TextEditingController();
  final selectedIndex = 0.obs; 
  final FakeService _apiService=Get.find();
  final score=''.obs;


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
