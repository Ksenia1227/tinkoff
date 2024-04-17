import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/modules/check/controllers/check_controller.dart';
import 'package:tinkoff/app/routes/app_pages.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';
import 'package:tinkoff/app/service/fake_service.dart';

class MoneyController extends GetxController {
  //TODO: Implement MoneyController
  final moneyController = TextEditingController();
  final selectedIndex = 0.obs;
  final currentPeople = ''.obs;
  FakeNetService fakeNetService = Get.find();
  FakeService fakeService = Get.find();
  final score = ''.obs;
  final openPageCount = 0.obs;
  final moneyHintColor = Colors.black.obs;

  void checkAndSearchScore() {
    openPageCount.value = 1 + openPageCount.value;
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

  void check(context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(children: [
              Container(
                  height: 35, width: 35, child: CircularProgressIndicator()),SizedBox(width: 10,),
              const Text(
                'Подождите, пожалуйста...',
                style: TextStyle(fontSize: 19),
              )
            ]),
            contentPadding:
                EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          );
        });
    await _randomDelay();
    double sc =
        double.tryParse(score.value)! - double.tryParse(moneyController.text)!;
    Get.back();
    if (sc < 0) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              content: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Операция не может быть выполнена,',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('недостаточно средств на счете',
                      style: TextStyle(fontSize: 18))
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          });
    } else {
      Get.offAndToNamed(Routes.CHECK, arguments: {
        'arg1': currentPeople.value,
        'arg2': moneyController.text,
      });
      transferMoney();
      checkAndSearchScore();
      moneyHintColor.value = Colors.black;
    }
  }

  Future<void> _randomDelay() async {
    return Future.delayed(Duration(seconds: 6));
  }

  void transferMoney() {
    fakeNetService.changeMoney(moneyController.text);
    fakeNetService.changeWaste(moneyController.text);
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
