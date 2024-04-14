import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/data/models/people_model.dart';
import 'package:tinkoff/app/routes/app_pages.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';

class NumberController extends GetxController {
  //TODO: Implement NumberController
  final numberOrNameController = TextEditingController();
  final isDigitsOnly = false.obs;
  final namePeople = ''.obs;
  FakeService fakeService = Get.find();
  final listPeople = RxList<People>();
   Future<void> getPeople() async {
    listPeople.value = await fakeService.getPeople();
  }

  @override
  void onInit() async {
    await getPeople();
    super.onInit();
  }

void changename(){

  
}
void transition() {
  Get.toNamed(Routes.MONEY);
}
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
