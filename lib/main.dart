import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';
import 'package:tinkoff/app/service/fake_service.dart';

void main() async {
  await initService();
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
    )
  );
}
Future<void> initService()async{
  await Get.putAsync(() => FakeService().init());
}