import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

class NumberController extends GetxController {
  //TODO: Implement NumberController
  final numberOrNameController = TextEditingController();
  final isDigitsOnly = false.obs;


void transition() {
  Get.toNamed(Routes.MONEY);
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
