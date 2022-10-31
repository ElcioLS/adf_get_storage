import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final storage = GetStorage();
  late final VoidCallback listen;

  @override
  void initState() {
    listen = storage.listen(() {
      debugPrint('O Storage foi alterado!!!');
    });

    storage.listenKey('nameKey', (value) {
      debugPrint('Chave NameKey Alterada, $value');
    });

    super.initState();
  }

  @override
  void dispose() {
    listen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var nome = storage.read('nameKey') ?? '';
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButton(
                onPressed: () {
                  storage.write('nameKey', 'Elcinho');
                  setState(() {});
                },
                child: const Text('Gravar nome')),
            ElevatedButton(
                onPressed: () {
                  storage.remove(
                    'nameKey',
                  );
                  setState(() {});
                },
                child: const Text('Remover nome')),
            ElevatedButton(
                onPressed: () {
                  listen();
                },
                child: const Text('Remover Listen')),
          ],
        ),
      ),
    );
  }
}
