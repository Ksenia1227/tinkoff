import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:tinkoff/app/modules/score/widget/widget.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

import '../controllers/score_controller.dart';

class ScoreView extends GetView<ScoreController> {
  const ScoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 44, 44),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Get.toNamed(Routes.MAIN);
            },
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color.fromARGB(255, 44, 44, 44), Colors.white],
                end: Alignment.bottomCenter,
                stops: [0.33, 1.0],
              ),
            ),
            child: SingleChildScrollView(
              // child: Container(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(children: [
                  const   Row(children: [
                      Text('Tinkoff Black',
                          style: TextStyle(
                              color: Color.fromARGB(255, 190, 190, 190),
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(
                        Icons.edit,
                        color: Color.fromARGB(255, 190, 190, 190),
                        size: 20,
                      ),
                    ]),
                    const Row(children: [
                      Text('238,40',
                          style: TextStyle(
                              color: Color.fromARGB(255, 190, 190, 190),
                              fontWeight: FontWeight.bold,
                              fontSize: 32)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('₽',
                          style: TextStyle(
                              color: Color.fromARGB(255, 190, 190, 190),
                              fontWeight: FontWeight.bold,
                              fontSize: 32))
                    ]),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 55,
                              height: 40,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/card/card.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(
                            width: 14,
                          ),
                          Container(
                              height: 40,
                              width: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 84, 84, 84),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ])
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 100,
                      width: 357,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 244, 243, 243),
                      ),
                      child: Padding(
                          padding: const  EdgeInsets.symmetric(
                              horizontal: 25, vertical: 23),
                          child: Row(children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    child: Center(
                                        child: Container(
                                      width: 16,
                                      height: 16,
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 141, 207, 238),
                                        shape: BoxShape.circle,
                                      ),
                                    )),
                                  ),
                                  const Text('Оплатить',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                  ),
                                  const Text('Пополнить',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Center(
                                child: GestureDetector(
                              onTap: () => showBottom(context, controller),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )),
                                    ),
                                    const Text('Перевести',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ),
                            ))
                          ]))),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Wrap(children: [
                    Container(
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 244, 243, 243),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 22),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Операции',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                const Text('по счету',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                const Text('Трат в апреле',
                                    style: TextStyle(
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                const Row(
                                  children: [
                                    Text('3 585',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14)),
                                    Icon(
                                      Icons.currency_ruble,
                                      size: 17,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width: 60,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          color: Colors.blue,
                                        )),
                                    Container(
                                        width: 40,
                                        height: 8,
                                        color: Colors.yellow),
                                    Container(
                                        width: 15,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          color: const Color.fromARGB(
                                              255, 194, 126, 225),
                                        )),
                                  ],
                                ),
                              ]),
                        )),
                    const SizedBox(
                      width: 18,
                    ),
                    Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 244, 243, 243),
                      ),
                      child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 22),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 75,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 37, 37, 37),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Row(children: [
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 219, 219),
                                      size: 15,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '144 ₽',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 218, 217, 217),
                                          fontSize: 17),
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text('Накоплено',
                                    style: TextStyle(
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                const Text('кэшбэка',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text('Зачислится',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 107, 107, 107),
                                        fontSize: 14)),
                                const Text('15 апреля',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 107, 107, 107),
                                        fontSize: 14)),
                              ])),
                    ),
                  ])),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                      width: 350,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 22),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Кубышка',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Запас денег от банка. Можно брать',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 107, 107, 107),
                                      fontSize: 14,
                                    )),
                                const Text('на неделю без всяких комиссий',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 107, 107, 107),
                                      fontSize: 14,
                                    )),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 50,
                                  width: 300,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 90, vertical: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 254, 229, 11),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: const Text(
                                    'Узнать больше',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ]))),
                ],
              ),
            )));
  }
}
