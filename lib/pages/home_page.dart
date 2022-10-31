import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late String nome;

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var nome = GetStorage().read('nameKey') ?? '';
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
                  GetStorage().write('nameKey', 'Elcinho');
                  setState(() {});
                },
                child: const Text('Gravar nome')),
            ElevatedButton(
                onPressed: () {
                  GetStorage().remove(
                    'nameKey',
                  );
                  setState(() {});
                },
                child: const Text('Remover nome'))
          ],
        ),
      ),
    );
  }
}
