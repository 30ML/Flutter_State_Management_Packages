import 'package:dependency_injection/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Controller controller = Get.put(Controller(), tag: '30ml', permanent: true); // (1)

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => Controller()); // (2)
    // Get.lazyPut(() => Controller(), tag: '30ml', fenix: true); // (3)
    // Get.create(() => Controller()); // (4)
    Get.putAsync<Controller>(() async => await Controller()); // (5)

    return GetMaterialApp(
      title: 'Dependency Injection',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dependency Injection'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.find<Controller>(tag: '30ml'); // (1)
                  // Get.find<Controller>(); // (2)
                  // Get.find<Controller>(tag: '30ml'); // (3)
                  // Get.find<Controller>(); // (4)
                  Get.find<Controller>().increment(); // (5)
                },
                child: const Text('Click Here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
