import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/money_controller.dart';

class MoneyView extends GetView<MoneyController> {
  const MoneyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MoneyController());
    final args = Get.arguments as Map<String, dynamic>;
    final arg1 = args['arg1'];
    final arg2 = args['arg2'];

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
              controller.moneyController.clear();
            },
          ),
        ),
        body: Container(
            width: 400,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Obx(() => Container(
                          height: 90,
                          width: 350,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 22),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 71, 71, 71),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'с Tinkoff Black',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              Row(children: [
                                Text(
                                  controller.score.value,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const Icon(
                                  Icons.currency_ruble,
                                  size: 30,
                                  color: Colors.white,
                                )
                              ])
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 52,
                        width: 350,
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(() {
                                controller.currentPeople.value = arg1;
                                return arg1;
                              }(),
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(255, 120, 120, 120))),
                              const SizedBox(
                                height: 0.5,
                              ),
                              Text(
                                () {
                                  controller.currentnumPeople.value = arg2;
                                  return "+7${controller.currentnumPeople.value}";
                                }(),
                                style: const TextStyle(
                                  fontSize: 17,
                                ),
                              )
                            ])),
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
                            buildContainer(2, 'assets/company/spb.png',
                                'Другой банк', Colors.grey[100]),
                          ],
                        )),
                    const SizedBox(
                      height: 22,
                    ),
                    Obx(() => TextField(
                        controller: controller.moneyController,
                        style:  TextStyle(
                          fontSize: 20,
                            color:controller.moneyHintColor.value
                            //  Color.fromARGB(255, 2, 2, 2)
                             ),
                        decoration: InputDecoration(
                          //  errorText: controller.moneyHintColor.value ? 'jjjj' : null,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: '0 ₽',
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: controller.moneyHintColor.value),
                          fillColor: Colors.grey[100],
                          filled: true,
                          suffixIcon: const Icon(
                            Icons.calculate,
                            color: Colors.blue,
                          ),
                        ),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (value) {
                          if (value.contains(',')) {
                            controller.moneyController.value = TextEditingValue(
                                text: value.replaceAll(',', '.'));
                          }
                        })),
                    const SizedBox(
                      height: 11,
                    ),
                    Obx(() => Text(
                          controller.comisionText.value,
                          textAlign: TextAlign.start,
                          style:const  TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 61, 61, 61)),
                        )),
                    const SizedBox(
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
                          if (controller.moneyController.text.isEmpty) {
                            controller.moneyHintColor.value = Colors.red;
                          } else {
                            if (controller.selectedIndex.value >= 1 &&
                                double.tryParse(
                                        controller.moneyController.text)! <
                                    10) {
                              controller.moneyHintColor.value = Colors.red;
                            } else {
                              controller.check(context);
                              // controller.transferMoney();
                            }
                          }
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
          controller.dopcheck();
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
