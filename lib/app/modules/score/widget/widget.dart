import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tinkoff/app/modules/score/controllers/score_controller.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

showBottom(BuildContext context, ScoreController controller) {
  showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
            child: Container(
                width: 400,
                height: 900,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //     width: 10,
                      //     height: 3,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(18),
                      //       color: Colors.grey,
                      //     )),
                      SizedBox(height: 18),
                      Container(
                        width: 300,
                        height: 40,
                        padding: const EdgeInsets.symmetric(vertical: 2),
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
                            hintText: 'Поиск',
                            fillColor: Color.fromARGB(31, 9, 9, 9),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(() => SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.generate(
                              controller.listPeople.length,
                              (index) => GestureDetector(
                                  onTap: () {
                                    Get.toNamed(Routes.MONEY,arguments: controller.listPeople[index].name);
                                  },
                                  child: Column(children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(
                                            255, 96, 95, 95), 
                                      ),
                                      child: Center(
                                        child: Text(
                                          controller.listPeople[index].name[0],
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Text(controller.listPeople[index].name,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400)),
                                  ])),
                            )),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      ListTile(
                          leading: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.phone,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('По номеру телефона',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              )),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                          onTap: () {
                            Get.toNamed(Routes.NUMBER);
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.credit_card,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('По номеру карты',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.currency_ruble,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('По реквизитам счета',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.description,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('По номеру договора',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.nightlight,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('SWIFT-переводы',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                    ])));
      });
}
  





//import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:tinkoff/app/routes/app_pages.dart';

// class ShowBottomSheet extends StatelessWidget {
//   const ShowBottomSheet({super.key, required this.name, required this.letters});
//   final List<String> letters;
//   final List<String> name;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 800,
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//               width: 85,
//               height: 3,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Colors.grey,
//               )),
//           SizedBox(height: 18),
//           Container(
//             width: 300,
//             height: 35,
//             child: TextField(
//               style: const TextStyle(color: Color.fromARGB(255, 217, 213, 213)),
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.0)),
//                 prefixIcon: const Icon(
//                   Icons.search,
//                   color: Color.fromARGB(255, 108, 107, 106),
//                 ),
//                 hintText: 'Поиск',
//                 fillColor: Color.fromARGB(31, 171, 170, 170),
//               ),
//             ),
//           ),
//          const  SizedBox(
//             height: 10,
//           ),
//           Obx(
//             () => SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: List.generate(
//                       letters.length,
//                       (index) => Column(children: [
//                             Container(
//                               margin: EdgeInsets.all(10),
//                               width: 40,
//                               height: 40,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Color.fromARGB(
//                                     255, 96, 95, 95), // Цвет круга
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   letters[index],
//                                   style: const TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                             Text(name[index],
//                                 style: const TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.w400)),
//                           ])),
//                 )),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           //  SingleChildScrollView(
//           //     child: 
//           Column (
//             // shrinkWrap: true,
//             //     physics: NeverScrollableScrollPhysics(),
//             children: [
//               ListTile(
//                 leading: const CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.blue,
//                   child: Icon(
//                     Icons.phone,
//                     size: 15,
//                     color: Colors.white,
//                   ),
//                 ),
//                 title: const Text('По номеру телефона',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                     )),
//                 trailing: const Icon(Icons.arrow_forward_ios, size: 18,),
//                  onTap: () {Get.toNamed(Routes.NUMBER);}
//               ),
//               const SizedBox(height: 5,),
//               const ListTile(
//                 leading: CircleAvatar(
//                   radius: 15,
//                   backgroundColor: Colors.blue,
//                   child: Icon(
//                     Icons.credit_card,
//                     size: 15,
//                     color: Colors.white,
//                   ),
//                 ),
//                 title: Text('По номеру карты',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                     )),
//                 trailing: Icon(Icons.arrow_forward_ios, size: 18,),
//               ),
//              const  SizedBox(height: 5,),
//               const ListTile(
//                 leading: CircleAvatar(
//             radius: 15,
//             backgroundColor: Colors.blue,
//             child: Icon(
//               Icons.currency_ruble,
//               size: 15,
//               color: Colors.white,
//             ),
//           ),
//                 title: Text('По реквизитам счета',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                     )),
//                 trailing: Icon(Icons.arrow_forward_ios, size: 18,),
//               ),
//           //      SizedBox(height: 5,),
//           //     ListTile(
//           //       leading:CircleAvatar(
//           //   radius: 15,
//           //   backgroundColor: Colors.blue,
//           //   child: Icon(
//           //     Icons.description,
//           //     size:15,
//           //     color: Colors.white,
//           //   ),
//           // ),
//           //       title: Text('По реквизитам счета',
//           //           style: TextStyle(
//           //             fontSize: 15,
//           //             color: Colors.black,
//           //           )),
//           //       trailing: Icon(Icons.arrow_forward_ios, size: 18,),
//           //     ),
//           //     SizedBox(height: 5,),
//           //     ListTile(
//           //       leading:CircleAvatar(
//           //   radius: 15,
//           //   backgroundColor: Colors.blue,
//           //   child: Icon(
//           //     Icons.nightlight_round,
//           //     size: 15,
//           //     color: Colors.white,
//           //   ),
//           // ),
//           //       title: Text('SWIFT-переводы',
//           //           style: TextStyle(
//           //             fontSize: 15,
//           //             color: Colors.black,
//           //           )),
//           //       trailing: Icon(Icons.arrow_forward_ios, size: 18,),
//           //     ),
      
//             ],
//           )
//       ]));
//   }
// }