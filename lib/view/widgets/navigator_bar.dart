import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocitech_ecommerce/app_pages.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ElevatedButton(
        onPressed: () => Get.toNamed(AppPages.home),
        child: const Text("Home"),
      ),
      ElevatedButton(
        onPressed: () => Get.toNamed(AppPages.shop),
        child: const Text("Shop"),
      ),
    ]);
  }
}
