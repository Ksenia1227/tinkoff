import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/modules/score/widget/widget.dart';

class ScoreController extends GetxController {
  //TODO: Implement ScoreController
  final List<String> letters = ['C', 'A', 'П', 'Т','К','Д','П'].obs;
  final List<String> name = ['Себе', 'Aлёна', 'Полина', 'Таня', 'Костя', 'Даша', 'Преподаватель'].obs;

// void showBottomSheet(BuildContext context) {
//     showModalBottomSheet<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return ShowBottom(context, controller);
//         // (name:name, letters:letters);
//       },);}
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
