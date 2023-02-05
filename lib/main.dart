import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/screens/home.dart';
import 'app_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      home: const Scaffold(
        body: Center(
          child: Home(),
        ),
      ),
    );
  }
}
