import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

import '../controllers/number_controller.dart';

class NumberView extends GetView<NumberController> {
  const NumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text(
            'Кому перевести',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // centerTitle: true,
        ),
        body: Obx(()=> Stack(
          children: [
            SingleChildScrollView(
                child: Container(
              width: 450,
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          height: 60,
                          color: Colors.white,
                        ),
                        Container(
                          height: 300,
                          color: const Color.fromARGB(255, 94, 86, 62),
                        ),
                        GestureDetector(
            onTap: () {
              Get.toNamed(Routes.MONEY);
            },
            child: 
                        Container(
                          height: 300,
                          color: Colors.red,
                        ),
                )])),
            )),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 220, 218, 218)),
                      child: Row(
                        children: [
                          Container(
                              width: 22,
                              height: 22,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 25, 111, 182),
                                shape: BoxShape.circle,
                              )),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text('+7', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 220, 218, 218)),
                      child: TextField(
                        controller: controller.numberOrNameController,
                        style: const TextStyle(color: Color.fromARGB(255, 2, 2, 2)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: 'Номер или имя',
                          fillColor: Color.fromARGB(31, 171, 170, 170),
                          filled: true,
                        ),
                        onChanged: (value) {
                          if (value.contains(RegExp(r'\d'))) {
                            controller.isDigitsOnly.value = true;
                          } else {
                            controller.isDigitsOnly.value = false;
                          }
                        },
                        inputFormatters: [
                          if (controller.isDigitsOnly.isTrue)
                            LengthLimitingTextInputFormatter(10),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        )));
  }
}
