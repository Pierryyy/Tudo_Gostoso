import 'package:flutter/material.dart';
import 'package:tudo_gostoso2/models/recipe.dart';
import 'package:tudo_gostoso2/screens/widgets/details.dart';
import 'package:tudo_gostoso2/screens/widgets/list_elements.dart';
import 'package:tudo_gostoso2/style.dart';
import 'package:tudo_gostoso2/screens/widgets/my_title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  // Simulando o BD -> Select
  final recipe = Recipe(
    preparationTime: 30,
    income: 25,
    numberOfFavorites: 1789,
    numberOfCommints: 585,
    name: "Bolo gelado",
    photo: "assets/images/bolo.jpg",
    ingredientsModePaste: [
      "Em uma batedeira, bata as claras em neve acrescentando o açúcar aos poucos e bata por 3 minutos.",
      "Adicione as gemas, o trigo, o suco e continue batendo até formar uma massa homogênea.",
      "Por último, adicione o fermento e bata por mais 40 segundos na menor velocidade da batedeira.",
      "Despeje a massa em uma forma média e untada.",
    ],
    ingredientsModeTopping: [
      "Asse em forno preaquecido em temperatura média de 180 °C por 40 minutos ou até dourar.",
      "Após 40 minutos, retire o bolo do forno e fure toda a sua superfície com um garfo para facilitar a penetração da cobertura.",
      "Com o bolo ainda quente, despeje a cobertura sobre ele e salpique por cima o coco ralado.",
      "Leve a geladeira por 3 horas, depois corte o bolo em quadrados do tamanho que preferir e embrulhe com papel alumínio."
    ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTitle(
                  icon: FontAwesomeIcons.bookOpen,
                  text: 'INGREDIENTES',
                ),
              ],
            ),
            ListElements(
              title: "Massa",
              listOfElements: recipe.ingredientsPaste,
            ),
            ListElements(
              title: "Cobertura",
              listOfElements: recipe.ingredientsTopping,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyTitle(
                      icon: FontAwesomeIcons.utensilSpoon,
                      text: 'Preparo',
                    ),
                  ],
                ),
                ListElements(
                  title: 'Massa',
                  listOfElements: recipe.ingredientsModePaste,
                ),
              ],
            ),
            ListElements(
              title: 'Cobertura',
              listOfElements: recipe.ingredientsModeTopping,
            )
          ],
        ),
      ),
    );
  }
}
