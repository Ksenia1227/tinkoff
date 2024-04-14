import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

import '../controllers/money_controller.dart';

class MoneyView extends GetView<MoneyController> {
  const MoneyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Перевести'),
          leading: IconButton(
            icon: const Icon(
              Icons.west,
              color: Colors.blue,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Container(
            width: 400,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: 90,
                      width: 350,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 22),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 71, 71),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'с Tinkoff Black',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(children: [
                            Text(
                              '188,40',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.currency_ruble,
                              size: 30,
                              color: Colors.white,
                            )
                          ])
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 52,
                        width: 350,
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(Get.arguments,
                            style: TextStyle(fontSize: 20))),
                    const SizedBox(
                      height: 22,
                    ),
                    Obx(() => Row(
                          children: [
                            buildContainer(0, 'assets/company/tinkof.png',
                                'Тинькофф банк', Colors.yellow[100]),
                            SizedBox(width: 22),
                            buildContainer(1, 'assets/company/cber.png',
                                'Сбербанк', Colors.green[100]),
                            SizedBox(width: 22),
                            buildContainer(2, 'assets/company/sbp.png',
                                'Другой банк', Colors.grey[100]),
                          ],
                        )),
                    const SizedBox(
                      height: 22,
                    ),
                    TextField(
                        controller: controller.moneyController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 2, 2, 2)),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: '0 ₽',
                          hintStyle: const TextStyle(
                              fontSize: 20, color: Colors.black),
                          fillColor: Colors.grey[100],
                          filled: true,
                          suffixIcon: const Icon(
                            Icons.calculate,
                            color: Colors.blue,
                          ),
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ]),
                    const SizedBox(
                      height: 11,
                    ),
                    const Text(
                      'Сумма от 0 ₽ до 200 000 000 ₽',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextField(
                      style:
                          const TextStyle(color: Color.fromARGB(255, 2, 2, 2)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        hintText: 'Сообщение получателю',
                        hintStyle:
                            const TextStyle(fontSize: 18, color: Colors.grey),
                        fillColor: Colors.grey[100],
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.offAndToNamed(Routes.CHECK);
                        },
                        child: Container(
                          height: 50,
                          width: 350,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 115),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 229, 11),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'Перевести',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ],
                ))));
  }

  buildContainer(int index, String imagePath, String text, color) {
    return GestureDetector(
        onTap: () {
          controller.selectContainer(index);
        },
        child: Container(
          height: 93,
          width: 100,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: controller.selectedIndex == index
                  ? const Color.fromARGB(255, 24, 127, 211)
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 6,
                left: 0,
                child: SizedBox(
                    width: 25,
                    height: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Positioned(
                top: 45,
                left: 0,
                child: Text(text,
                    style: TextStyle(color: Colors.black, fontSize: 14)),
              ),
            ],
          ),
        ));
  }
}
