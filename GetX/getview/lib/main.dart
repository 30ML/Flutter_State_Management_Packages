import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getview/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView<Controller> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());

    return GetMaterialApp(
      title: 'GetView Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetView Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The Value is ${controller.count}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print(controller.hashCode);
                  controller.increment();
                },
                child: const Text('Increment BUtton'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print(controller.hashCode);
                  controller.decrement();
                },
                child: const Text('Decrement BUtton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
