import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) => ListTile(
                leading: const Icon(Icons.access_time_outlined),
                title: const Text('Nombre de  la Ruta'),
                onTap: () => Navigator.pushNamed(context, 'listview1'),
                // final route = MaterialPageRoute(
                //     builder: (context) => const Listview1Screen());
                // Navigator.push(context, route);
              )),
    );
  }
}
