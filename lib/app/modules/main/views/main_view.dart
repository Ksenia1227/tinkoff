import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 236, 236),
      body: Container(
          width: 450,
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 5),
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
                          child:
                              Text('K', style: TextStyle(color: Colors.white)),
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
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          10,
                          (index) => Container(
                            margin: EdgeInsets.all(5),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 181, 28, 28),
                            ),
                            child: Center(child: Text('Image ${index + 1}')),
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
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    const Row(
                                      children: [
                                        Text('3 585',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16)),
                                        Icon(
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
                                            width: 65,
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
                                              color: Color.fromARGB(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 107, 35, 179),
                                              )),
                                          const SizedBox(
                                            width: 11,
                                          ),
                                          Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 179, 35, 119),
                                              )),
                                          const SizedBox(
                                            width: 11,
                                          ),
                                          Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 27, 187, 54),
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
                    Container(
                        height: 110,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: ListTile(
                            leading: Container(
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
                                      color: Color.fromARGB(255, 141, 207, 238),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.currency_ruble,
                                      size: 18,
                                      color: Color.fromARGB(255, 25, 111, 182),
                                    ),
                                  ),
                                )),
                            title: const Row(children: [
                              Text(
                                '179.90',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.currency_ruble,
                                size: 20,
                                color: Colors.black,
                              )
                            ]),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Tinkoff Black',
                                    style: (TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    )),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 69, 69, 69),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )
                                ]),
                            trailing: Column(children: [
                              Container(
                                width: 55,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 69, 69, 69),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 221, 219, 219),
                                    size: 10,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '144',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 218, 217, 217),
                                        fontSize: 12),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.currency_ruble,
                                    color: Color.fromARGB(255, 221, 219, 219),
                                    size: 12,
                                  )
                                ]),
                              )
                            ]))),
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
                        ))
                  ]))),
    );
    //     children: [
    // const SizedBox(
    //   height: 20,
    // ),
    // Container(
    //   height: 1,
    //   width: 400,
    //   child:
    //    Padding(
    //     padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
    //     child: TextField(
    //       style:
    //           const TextStyle(color: Color.fromARGB(255, 217, 213, 213)),
    //       decoration: InputDecoration(
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(30.0)),
    //         prefixIcon: const Icon(
    //           Icons.search,
    //           color: Color.fromARGB(255, 108, 107, 106),
    //         ),
    //         hintText: 'Банкоматы',
    //         fillColor: Color.fromARGB(31, 171, 170, 170),
    //       ),
    //     ),
    //   ),),

    // const SizedBox(
    //   width: 20,
    //   height: 20,
    // ),
    // Container(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 22),
    //     child: Row(
    //       children: [
    //         const CircleAvatar(
    //           child: Text('K', style: TextStyle(color: Colors.white)),
    //           backgroundColor: Colors.grey,
    //           radius: 22,
    //         ),
    //         const SizedBox(width: 21),
    //         const Text(
    //           'Ксения >',
    //           style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
    //         ),
    //         const SizedBox(
    //           width: 25,
    //         ),
    //         Container(
    //             decoration: BoxDecoration(
    //               color: Colors.purple,
    //               borderRadius: BorderRadius.circular(30.0),
    //             ),
    //             padding: const EdgeInsets.symmetric(
    //                 horizontal: 20, vertical: 6),
    //             child: const Row(
    //               children: [
    //                 Icon(
    //                   Icons.card_giftcard,
    //                   color: Colors.white,
    //                 ),
    //                 SizedBox(
    //                   width: 6,
    //                 ),
    //                 Text(
    //                   'За друга',
    //                   style: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 16),
    //                 ),
    //               ],
    //             ))
    //       ],
    //     ),
    //   ),
    // ),
    // const SizedBox(
    //   height: 20,
    // ),
    // Container(
    //   height: 150,
    //   child: SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Row(
    //       children: List.generate(
    //         10,
    //         (index) => Container(
    //           margin: EdgeInsets.all(5),
    //           width: 80,
    //           height: 130,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(20),
    //             color: const Color.fromARGB(255, 181, 28, 28),
    //           ),
    //           child: Center(child: Text('Image ${index + 1}')),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // const SizedBox(
    //   height: 20,
    // ),
    // Container(
    //   child: Row(
    //     children: [
    //       Padding(
    //           padding:
    //               const EdgeInsets.symmetric(vertical: 3, horizontal: 22),
    //           child: Row(children: [
    //             Container(
    //                 height: 150,
    //                 width: 180,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20),
    //                   color: Colors.white,
    //                 ),
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                       vertical: 8, horizontal: 22),
    //                   child: Column(
    //                     children: [
    //                       const Text('Все операции',
    //                           style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                               fontSize: 18)),
    //                       const SizedBox(
    //                         width: 17,
    //                       ),
    //                       const Text('Трат в апреле',
    //                           style: TextStyle(
    //                               color: Colors.black,
    //                               // fontWeight: FontWeight.bold,
    //                               fontSize: 16)),
    //                       const SizedBox(
    //                         width: 17,
    //                       ),
    //                       const Row(
    //                         children: [
    //                           Text('3 585',
    //                               style: TextStyle(
    //                                   color: Colors.black, fontSize: 16)),
    //                           Icon(
    //                             Icons.currency_ruble,
    //                             size: 17,
    //                           ),
    //                         ],
    //                       ),
    //                       const SizedBox(
    //                         width: 20,
    //                       ),
    //                       Container(
    //                         height: 12,
    //                         width: 100,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           gradient: const LinearGradient(
    //                             colors: [
    //                               Colors.blue,
    //                               Colors.yellow,
    //                               Colors.purple,
    //                             ],
    //                             begin: Alignment.centerLeft,
    //                             end: Alignment.centerRight,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 )),
    // const SizedBox(
    //   width: 15,
    // ),
    // Row(
    //   children: [
    //     Container(
    //         height: 150,
    //         width: 150,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(20),
    //           color: Colors.white,
    //         ),
    //         child: const Padding(
    //           padding: EdgeInsets.symmetric(
    //               vertical: 8, horizontal: 22),
    //           child: Column(
    //             children: [
    //               Text('Кэшбэк',
    //                   style: TextStyle(
    //                       color: Colors.black,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18)),
    //               SizedBox(
    //                 width: 17,
    //               ),
    //               Text('И бонусы',
    //                   style: TextStyle(
    //                       color: Colors.black, fontSize: 16)),
    //             ],
    //           ),
    //         ))
    //   ],
    // ),
    // ]
    // )])));
    // ],
    // );
    //   )
    // ])));
  }
}
