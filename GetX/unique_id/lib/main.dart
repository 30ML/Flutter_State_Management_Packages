import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unique_id/Controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Unique ID',
      home: Scaffold(
        appBar: AppBar(title: const Text('Unique ID')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<Controller>(
                id: 'Counter',
                builder: (controller) {
                  return Text(
                    'The value is ${controller.count}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              GetBuilder<Controller>(
                builder: (controller) {
                  return Text(
                    'The value is ${controller.count}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.increment(),
                child: const Text('Increment Button'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.decrement(),
                child: const Text('Decrement Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
