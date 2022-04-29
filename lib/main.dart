import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexmmart/page_routing/app_pages.dart';
import 'package:hexmmart/page_routing/page_routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hexmart',
      initialRoute:Routes.appbar,
     
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      getPages: AppPages.pages,
    );
  }
}

