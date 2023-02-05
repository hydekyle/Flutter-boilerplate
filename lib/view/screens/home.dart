import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import '../../app_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController()..init(),
      builder: (box) => SafeArea(
        child: Column(children: [
          Obx(() => Text("Hola ${box.username}")),
          ElevatedButton(
              onPressed: () => box.username.value = "Pollon",
              child: const Text("Press me")),
        ]),
      ),
    );
  }
}
