import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinkoff/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
    )
  );
}