import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'pages/home_page.dart';

Future<void> main() async {
  await GetStorage.init();
  await GetStorage.init('JornadaGetX');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      // getPages: [GetPage(name: '/', page: () => const HomePage())],
    );
  }
}
