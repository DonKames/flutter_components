import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card - Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(children: const [
              ListTile(
                leading: Icon(
                  Icons.photo_album_outlined,
                  color: AppTheme.primary,
                ),
                title: Text('Soy un titulo'),
                subtitle: Text(
                    'Ad aute enim enim laboris exercitation non mollit dolore elit. Lorem consectetur dolore consequat eu nostrud aute sit ipsum non nulla Lorem cupidatat quis. Sunt ad ullamco mollit id. Est enim minim eu sint. Pariatur est cupidatat ex ipsum Lorem voluptate.'),
              )
            ]),
          )
        ],
      ),
    );
  }
}
