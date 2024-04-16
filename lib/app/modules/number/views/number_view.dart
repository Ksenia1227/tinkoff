import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tinkoff/app/modules/money/views/money_view.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

import '../controllers/number_controller.dart';

class NumberView extends GetView<NumberController> {
  const NumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var input = controller.numberOrNameController.text;
            if (input.length == 10) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoneyView(),
                    settings: RouteSettings(arguments: {
                      {'arg1': '', 'arg2': input}
                    }),
                    //                     maintainState: true));
                    // Get.toNamed(Routes.MONEY, arguments: {'arg1': '', 'arg2': input});
                    // controller.numberOrNameController.clear();
                  ));
            }
          },
          child: Icon(Icons.arrow_forward),
        ),
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
        body: Obx(() => SingleChildScrollView(
                child:
                    // Stack(children: [
                    // Container(
                    //   height: 500,
                    // ),

                    Column(children: [
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
                            SizedBox(
                                width: 22,
                                height: 22,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/company/flag.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text('+7', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        // ])
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
                          style: const TextStyle(
                              color: Color.fromARGB(255, 2, 2, 2)),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
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
              // Obx(() => SingleChildScrollView(
              //       child:
              // Stack(children: [
              // Container(
              //   height: 500,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Get.toNamed(Routes.MONEY);
              //   },
              // child:
              ListView.builder(
                  itemCount: controller.filterPeople.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MoneyView(),
                                  settings: RouteSettings(arguments: {
                                    'arg1': controller.filterPeople[index].name,
                                    'arg2': controller
                                        .filterPeople[index].number
                                        .substring(1)
                                  }),
                                  maintainState: true));
                          // Get.toNamed(Routes.MONEY, arguments: {
                          //   'arg1': controller.filterPeople[index].name,
                          //   'arg2': controller.filterPeople[index].number
                          //       .substring(1)
                          // });
                        },
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: ListTile(
                            leading: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 96, 95, 95),
                              ),
                              child: Center(
                                child: Text(
                                  controller.filterPeople[index].name[0],
                                  style: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            title: Text(
                              controller.filterPeople[index].name,
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text(
                                controller.filterPeople[index].number,
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                            // Row(
                            //       children: [
                            //         Container(
                            //           margin: EdgeInsets.all(10),
                            //           width: 40,
                            //           height: 40,
                            //           decoration: const BoxDecoration(
                            //             shape: BoxShape.circle,
                            //             color: Color.fromARGB(255, 96, 95, 95),
                            //           ),
                            //           child: Center(
                            //             child: Text(
                            //               controller.listPeople[index].name[0],
                            //               style: const TextStyle(
                            //                   fontSize: 15,
                            //                   color: Colors.white,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //           ),
                            //         ),

                            //       ],
                          ),
                        ));
                  }),

              // Container(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: Row(
              //       children: [
              //         Container(
              //           padding: const EdgeInsets.symmetric(horizontal: 12),
              //           height: 50,
              //           width: 80,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(7),
              //               color: Color.fromARGB(255, 220, 218, 218)),
              //           child: Row(
              //             children: [
              //               SizedBox(
              //                   width: 22,
              //                   height: 22,
              //                   child: ClipRRect(
              //                     borderRadius: BorderRadius.circular(10),
              //                     child: const Image(
              //                       image: AssetImage(
              //                         'assets/company/flag.jpg',
              //                       ),
              //                       fit: BoxFit.cover,
              //                     ),
              //                   )),
              //               const SizedBox(
              //                 width: 2,
              //               ),
              //               const Text('+7', style: TextStyle(fontSize: 20)),
              //             ],
              //           ),
              //           // ])
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           width: 270,
              //           height: 50,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(7),
              //               color: Color.fromARGB(255, 220, 218, 218)),
              //           child: TextField(
              //             controller: controller.numberOrNameController,
              //             style: const TextStyle(
              //                 color: Color.fromARGB(255, 2, 2, 2)),
              //             decoration: const InputDecoration(
              //               border: InputBorder.none,
              //               contentPadding:
              //                   EdgeInsets.symmetric(horizontal: 20),
              //               hintText: 'Номер или имя',
              //               fillColor: Color.fromARGB(31, 171, 170, 170),
              //               filled: true,
              //             ),
              //             onChanged: (value) {
              //               if (value.contains(RegExp(r'\d'))) {
              //                 controller.isDigitsOnly.value = true;
              //               } else {
              //                 controller.isDigitsOnly.value = false;
              //               }
              //             },
              //             inputFormatters: [
              //               if (controller.isDigitsOnly.isTrue)
              //                 LengthLimitingTextInputFormatter(10),
              //             ],
              //           ),
              //         ),
              //       ],
              //     )),
            ]))));
  }
}
