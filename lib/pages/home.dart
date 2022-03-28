import 'package:flutter/material.dart';

import '../components/card_begin_home.dart';
import '../components/card_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CardBeginHome(),
          CardKonten(
            foto: 'assets/images/foto1.jpg',
            deskripsi: 'Salad for breakfast',
            nama: 'Victoria',
            gambarkonten: 'assets/images/salad.jpg',
          ),
          CardKonten(
            foto: 'assets/images/foto2.jpg',
            deskripsi: 'Salmon Time',
            nama: 'Adam',
            gambarkonten: 'assets/images/salmon.jpg',
          ),
          CardKonten(
            foto: 'assets/images/foto3.jpg',
            deskripsi: 'Lunch',
            nama: 'Brooks',
            gambarkonten: 'assets/images/food1.webp',
          ),
          CardKonten(
            foto: 'assets/images/foto4.jpeg',
            deskripsi: 'Yummyyy',
            nama: 'Tommy',
            gambarkonten: 'assets/images/food2.jpg',
          ),
          CardKonten(
            foto: 'assets/images/foto5.jpeg',
            deskripsi: 'Salad bowl',
            nama: 'Anna',
            gambarkonten: 'assets/images/food3.jpg',
          ),
        ],
      ),
    );
  }
}
