import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext _, int index) => ListTile(
          onTap: () {
            final game = options[index];
            print(game);
          },
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.purple,
          ),
        ),
        itemCount: options.length,
        separatorBuilder: (BuildContext _, int __) => const Divider(),
      ),
    );
  }
}
