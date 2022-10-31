import 'package:adf_get_storage/core/storage/storage.dart';
import 'package:flutter/material.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({Key? key}) : super(key: key);

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final storage = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(storage.name),
            ElevatedButton(
                onPressed: () {
                  storage.name = 'Elcio Lopes';
                  setState(() {});
                },
                child: const Text('Gravar nome')),
            ElevatedButton(
                onPressed: () {
                  storage.name = '';
                  setState(() {});
                },
                child: const Text('Remover nome')),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Remover Listen')),
            Text('Get: ${storage.nameGetX}'),
            ElevatedButton(
                onPressed: () {
                  storage.nameGetX = 'Elcinho Com GETX';
                  setState(() {});
                },
                child: const Text('Gravar nome GetX')),
            ElevatedButton(
                onPressed: () {
                  storage.nameGetX = '';
                  setState(() {});
                },
                child: const Text('Remover nome GetX')),
          ],
        ),
      ),
    );
  }
}
