import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/data/fakedata/fake_data_people.dart';
import 'package:tinkoff/app/data/models/people_model.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';

class NumberController extends GetxController {
  //TODO: Implement NumberController
  final numberOrNameController = TextEditingController();
  var filterPeople=<People>[].obs;
  final isDigitsOnly = false.obs;
  final namePeople = ''.obs;
  FakeService fakeService = Get.find();
  final listPeople = RxList<People>();
final score=''.obs;

   Future<void> getPeople() async {
    listPeople.value = await fakeService.getPeople();
  }

  @override
  void onInit() {
     getPeople();
     numberOrNameController.addListener(() {searchPeople(); });
    super.onInit();
  }

// void inputData(){
//   if (numberOrNameController.text.contains(RegExp(r'\d'))) {
//                               isDigitsOnly.value = true;
//                             } else {
//                               isDigitsOnly.value = false;
//                             }
//                           },
//                           inputFormatters: [
//                             if (isDigitsOnly.isTrue)
//                               LengthLimitingTextInputFormatter(10),
//                           ],
// }
void searchPeople() {
   if (numberOrNameController.text.isNotEmpty) {
      final searchText = numberOrNameController.text.toLowerCase();
      filterPeople.assignAll(listpeople.where((people) {
        return people.name.toLowerCase().contains(searchText) ||
            people.number.toLowerCase().contains(searchText);
      }).toList());
    } else {
      filterPeople.assignAll(listPeople);
    }
}
// void transition() {
//   Get.toNamed(Routes.MONEY);
// }

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
