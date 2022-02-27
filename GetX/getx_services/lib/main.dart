import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_services/controller.dart';

Future<void> main() async {
  await initServices();

  runApp(const MyApp());
}

Future<void> initServices() async {
  print('This is the start of services.');

  await Get.putAsync<Service>(() async => await Service());

  print('The Services are about to start.');
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Services',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Services'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Service>().increment();
                },
                child: const Text('Increment Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
