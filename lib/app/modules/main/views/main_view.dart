import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 236, 236),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.radio_button_unchecked),
                label: 'Платежи',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.code,
                ),
                label: 'Город',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: 'Чат',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'Еще',
              ),
            ],
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: const Color.fromARGB(255, 8, 118, 207),
            unselectedItemColor: const Color.fromARGB(255, 104, 103, 103),
            onTap: (index) {
              controller.onItemTapped(index);
            },
            showUnselectedLabels: true,
          )),
      body: SingleChildScrollView(
          child: Container(
        width: 450,
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                    child: TextField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 217, 213, 213)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 108, 107, 106),
                        ),
                        hintText: 'Банкоматы',
                        fillColor: Color.fromARGB(31, 171, 170, 170),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // Container(
                  //   child: Row(
                  Wrap(
                    children: [
                      const CircleAvatar(
                        child: Text('K', style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.grey,
                        radius: 22,
                      ),
                      const SizedBox(width: 21),
                      const Text(
                        'Ксения >',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 6),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.card_giftcard,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'За друга',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          controller.picture.length,
                          (index) => Container(
                              margin: EdgeInsets.all(5),
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 185, 183, 183),
                                  border: Border.all(
                                    color:
                                        Color.fromARGB(255, 47, 137, 211),
                                    width: 2,
                                    
                                  ),), padding: EdgeInsets.all(2),
                              child: Stack(children: [
                                SizedBox(
                                    width: 90,
                                    height: 90,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image(
                                        image: AssetImage(
                                          controller.picture[index],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Positioned(
                                    bottom: 5,
                                    left: 6,
                                    child: Column(children: [
                                      Text(
                                        controller.text[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        controller.text1[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        controller.text2[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ])),
                              ])),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Wrap(children: [
                      Row(children: [
                        Container(
                            height: 140,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 22),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Все операции',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Text('Трат в апреле',
                                      style: TextStyle(
                                          color: Colors.black,
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Row(
                                    children: [
                                      Text(controller.waste.value,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                      const Icon(
                                        Icons.currency_ruble,
                                        size: 17,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  // Container(
                                  //   height: 12,
                                  //   width: 100,
                                  //   decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(20),
                                  //     gradient: const LinearGradient(
                                  //       colors: [
                                  //         Colors.blue,
                                  //         Colors.yellow,
                                  //         Colors.purple,
                                  //       ],
                                  //       begin: Alignment.centerLeft,
                                  //       end: Alignment.centerRight,
                                  //     ),
                                  //   ),
                                  // ),
                                  Row(
                                    children: [
                                      Container(
                                          width: controller.bluewight.value,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            color: Colors.blue,
                                          )),
                                      Container(
                                          width: controller.yellowwight.value,
                                          height: 8,
                                          color: Colors.yellow),
                                      Container(
                                          width: controller.purplewight.value,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            color: const Color.fromARGB(
                                                255, 194, 126, 225),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 17,
                        ),
                        Row(children: [
                          Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Кэшбэк',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    const Text('и бонусы',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: const Image(
                                                image: AssetImage(
                                                  'assets/company/magnit.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 11,
                                        ),
                                        SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: const Image(
                                                image: AssetImage(
                                                  'assets/company/megamarket.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 11,
                                        ),
                                        SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: const Image(
                                                image: AssetImage(
                                                  'assets/company/pyatorocka.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ],
                                    ))
                                  ],
                                ),
                              ))
                        ]),
                      ])
                    ]),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Future.delayed(Duration(seconds: 1), () {
                          Get.toNamed(Routes.SCORE);
                        });
                      },
                      child: Container(
                          height: 110,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Stack(children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 25, 111, 182),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 141, 207, 238),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.currency_ruble,
                                        size: 18,
                                        color:
                                            Color.fromARGB(255, 25, 111, 182),
                                      ),
                                    ),
                                  )),
                            ),
                            Positioned(
                              top: 10,
                              left: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Obx(() => Text(
                                          controller.score.value,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                    const SizedBox(width: 6),
                                    const Text(
                                      '₽',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                  const Text(
                                    'Tinkoff Black',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
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
                                      ))
                                ],
                              ),
                            ),
                            Positioned(
                                top: 15,
                                right: 15,
                                child: Column(children: [
                                  Container(
                                    width: 55,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 37, 37, 37),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Row(children: [
                                      SizedBox(width: 2),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 221, 219, 219),
                                        size: 10,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '10 ₽',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 218, 217, 217),
                                            fontSize: 12),
                                      ),
                                    ]),
                                  )
                                ]))
                          ]))),

                  //  ListTile(
                  //     leading: Container(
                  //         width: 40,
                  //         height: 40,
                  //         decoration: const BoxDecoration(
                  //           color: Color.fromARGB(255, 25, 111, 182),
                  //           shape: BoxShape.circle,
                  //         ),
                  //         child: Center(
                  //           child: Container(
                  //             width: 20,
                  //             height: 20,
                  //             decoration: const BoxDecoration(
                  //               color: Color.fromARGB(255, 141, 207, 238),
                  //               shape: BoxShape.circle,
                  //             ),
                  //             child: const Icon(
                  //               Icons.currency_ruble,
                  //               size: 18,
                  //               color: Color.fromARGB(255, 25, 111, 182),
                  //             ),
                  //           ),
                  //         )),
                  //     title: const Row(children: [
                  //       Text(
                  //         '179.90',
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //       Icon(
                  //         Icons.currency_ruble,
                  //         size: 20,
                  //         color: Colors.black,
                  //       )
                  //     ]),
                  //     subtitle: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           const Text(
                  //             'Tinkoff Black',
                  //             style: (TextStyle(
                  //               color: Colors.black,
                  //               fontSize: 17,
                  //             )),
                  //           ),
                  //           Container(
                  //             width: 55,
                  //             height: 40,
                  //             decoration: BoxDecoration(
                  //               color: Color.fromARGB(255, 69, 69, 69),
                  //               borderRadius: BorderRadius.circular(10),
                  //             ),
                  //           )
                  //         ]),
                  //     trailing: Column(children: [
                  //       Container(
                  //         width: 55,
                  //         height: 20,
                  //         decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 69, 69, 69),
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: const Row(children: [
                  //           Icon(
                  //             Icons.star,
                  //             color: Color.fromARGB(255, 221, 219, 219),
                  //             size: 10,
                  //           ),
                  //           SizedBox(width: 4),
                  //           Text(
                  //             '144',
                  //             style: TextStyle(
                  //                 color:
                  //                     Color.fromARGB(255, 218, 217, 217),
                  //                 fontSize: 12),
                  //           ),
                  //           SizedBox(width: 5),
                  //           Icon(
                  //             Icons.currency_ruble,
                  //             color: Color.fromARGB(255, 221, 219, 219),
                  //             size: 12,
                  //           )
                  //         ]),
                  //       )
                  //     ]))

                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 80,
                      width: 357,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 100, 100),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Вам предодобрена кредитка',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 240, 239, 239),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('Зачислим деньги на виртуальную',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 246, 245, 245),
                                  fontSize: 14,
                                )),
                            Text('карту за 60 секунд',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 243, 242, 242),
                                  fontSize: 14,
                                ))
                          ],
                        ),
                      )),

                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3, vertical: 15),
                      child: Obx(
                        () => SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.generate(
                              controller.list.length,
                              (index) {
                                return Container(
                                  height: 120,
                                  width: 120,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  padding: EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    controller.list[index],
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              },
                            ))),
                      )),
                  Container(
                    height: 60,
                    width: 130,
                    // margin: const EdgeInsets.symmetric(
                    //     horizontal: 30.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 52, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 229, 11),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Text(
                      'Посмотреть все продукты',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ])),
      )),
    );
  }
}
