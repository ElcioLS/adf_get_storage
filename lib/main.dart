import 'package:adf_get_storage/pages/storage/storage_page.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

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
      // home: const HomePage(),
      home: const StoragePage(),
      // getPages: [GetPage(name: '/', page: () => const HomePage())],
    );
  }
}
