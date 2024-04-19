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
  final currentnumPeople = ''.obs;
  final currentPeople = ''.obs;
  final comisionText = 'Сумма от 0 ₽ до 200 000 000 ₽'.obs;
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
                  height: 35, width: 35, child: CircularProgressIndicator()),
              SizedBox(
                width: 14,
              ),
              const Text(
                'Подождите, пожалуйста...',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 122, 122, 122)),
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
    bool sc = fakeNetService.check(moneyController.text);
    Get.back();
    if (!sc) {
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
        Get.offNamed(Routes.CHECK, arguments: {
          'arg1': currentnumPeople.value,
          'arg2': moneyController.text,
          'arg3': selectedIndex.value,
          'arg4': currentPeople.value,
        });
        transferMoney();
        checkAndSearchScore();
        selectedIndex.value = 0;
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

  void checkComision() {
    if (moneyController.text.isNotEmpty) {
      comisionText.value = 'Комиссия не взимается';
    } else {
      dopcheck();
    }
  }

  void dopcheck() {
    if (selectedIndex.value == 0) {
      comisionText.value = 'Сумма от 0 ₽ до 200 000 000 ₽';
    } else {
      comisionText.value = 'Сумма от 10 ₽ до 999 999 ₽';
    }
  }

  @override
  void onInit() {
    searchScore();
    moneyController.addListener(() {
      checkComision();
    });
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
