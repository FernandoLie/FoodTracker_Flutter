import 'package:flutter/material.dart';

import '../components/card_list_food.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 35,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.cancel_outlined),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const CardListFood(
            nama: 'Boiled Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 6% - 71 kcal',
            kalori: '77',
          ),
          const CardListFood(
            nama: 'Fried Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 6% - 89 kcal',
            kalori: '89',
          ),
          const CardListFood(
            nama: 'Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 5% - 74 kcal',
            kalori: '74',
          ),
          const CardListFood(
            nama: 'Egg Omelet or Scrambled Egg',
            ukuran: '1 large egg',
            kaloritext: 'RDI 7% - 98 kcal',
            kalori: '98',
          ),
          const CardListFood(
            nama: 'Egg White',
            ukuran: '1 large egg white',
            kaloritext: 'RDI 1% - 17 kcal',
            kalori: '17',
          ),
          const CardListFood(
            nama: 'Cooked Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 6% - 84 kcal',
            kalori: '84',
          ),
          const CardListFood(
            nama: 'Boiled Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 6% - 71 kcal',
            kalori: '77',
          ),
          const CardListFood(
            nama: 'Fried Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 6% - 89 kcal',
            kalori: '89',
          ),
          const CardListFood(
            nama: 'Egg',
            ukuran: '1 large',
            kaloritext: 'RDI 5% - 74 kcal',
            kalori: '74',
          ),
        ],
      ),
    );
  }
}
