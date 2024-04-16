import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

import '../controllers/check_controller.dart';

class CheckView extends GetView<CheckController> {
  const CheckView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Перевод'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
          width: 400,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Tinkoff Black',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(controller.oldscore.value,  style: const TextStyle(
                                 decoration: TextDecoration.lineThrough,
                                  fontSize: 18)),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text('₽', style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.east,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Obx(() => Text(controller.score.value,
                          style: TextStyle(fontSize: 18))),
                      const SizedBox(
                        width: 3,
                      ),
                      Text('₽', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('-',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(() {
                          final args = Get.arguments as Map<String, dynamic>;
                          controller.outgoingMoney.value = args['arg2'];
                        return controller.outgoingMoney.value;
                      }(),
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      const Text('₽',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 320,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.yellow,
                            Colors.white,
                          ],
                          stops: [
                            0.3,
                            0.7
                          ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 35,
                            height: 35,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage(
                                  'assets/company/tinkof.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            )),
                        const SizedBox(height: 20),
                        const Text(
                          'По номеру телефона',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(() {
                          final args = Get.arguments as Map<String, dynamic>;
                          final arg = args['arg1'];
                          return "+7${arg}";
                        }(),
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      width: 350,
                      child: Row(children: [
                        Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Icon(Icons.insert_drive_file,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text('Документы', style: TextStyle(fontSize: 16)),
                            Text('по операции', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(Icons.star, color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          const Text('Добавить',
                              style: TextStyle(fontSize: 16)),
                          const Text('в избранное',
                              style: TextStyle(fontSize: 16)),
                        ]),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Icon(Icons.rotate_left,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          const Text('Сделать', style: TextStyle(fontSize: 16)),
                          const Text('регулярным',
                              style: TextStyle(fontSize: 16)),
                        ])
                      ])),
                  const SizedBox(
                    height: 55,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        size: 17,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Обсудить в чате',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.MAIN);
                        controller.mainController.searchScore();
                        controller.scoreController.searchScore();
                         controller.moneyController.searchScore();
                        // controller.searchScore();
                         controller.moneyController.moneyController.clear();
                         controller.numberController.numberOrNameController.clear();
                        
                      },
                      child: Container(
                        height: 50,
                        width: 350,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 140),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 229, 11),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          'Готово',
                          style: TextStyle(fontSize: 20),
                        ),
                      ))
                ],
              ))),
    );
  }
}
