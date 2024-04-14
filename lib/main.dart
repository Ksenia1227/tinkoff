import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';
import 'package:tinkoff/app/service/fake_name_service.dart';

void main() {
  initServices();
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
    )
  );
}
void initServices() {
  Get.put(FakeService());
}