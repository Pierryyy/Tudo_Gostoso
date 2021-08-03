import 'package:flutter/material.dart';
import 'package:tudo_gostoso2/models/recipe.dart';
import 'package:tudo_gostoso2/screens/widgets/details.dart';
import 'package:tudo_gostoso2/screens/widgets/list_elements.dart';
import 'package:tudo_gostoso2/style.dart';

import '../style.dart';

class Home extends StatelessWidget {
  // Simulando o BD -> Select
  final recipe = Recipe(
    preparationTime: 30,
    income: 25,
    numberOfFavorites: 1789,
    numberOfCommints: 585,
    name: "Bolo gelado",
    photo: "assets/images/bolo.jpg",
    ingredientsModePaste: [],
    ingredientsModeTopping: [],
    ingredientsPaste: [
      "4 ovos",
      "2 xícaras (chá) de açúcar",
      "3 xícaras (chá) de farinha de trigo",
      "1 copo (americano) de suco de laranja",
      "1 colher (sopa) de fermento em pó",
    ],
    ingredientsTopping: [
      "1 garrafa pequena de leite de coco",
      "1 garrafa de leite (utilize a mesma garrafa do leite de coco como medida)",
      "1 lata de leite condensado",
      "1 pacote de coco ralado sem açúcar",
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
        title: Text(
          "Tudo gostoso",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: orangeTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(recipe.photo),
            Details(recipe),
          ],
        ),
      ),
    );
  }
}
