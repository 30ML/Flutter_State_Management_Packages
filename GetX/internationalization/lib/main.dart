import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization/controller.dart';
import 'package:internationalization/messages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());

    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'America'),
      fallbackLocale: const Locale('en', 'America'),
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Internationalization'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  controller.changeLanguage('kr', 'Korea');
                },
                child: const Text('Korean'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  controller.changeLanguage('en', 'America');
                },
                child: const Text('English'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
