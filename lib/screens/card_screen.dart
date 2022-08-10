import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

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
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://media-exp2.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0/1582050035728?e=2147483647&v=beta&t=lxt09r99nB70MdZRGsnwgcBbBYkPuiIEIRf2Vk9lSb8'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
