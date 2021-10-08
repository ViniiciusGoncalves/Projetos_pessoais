List<GridViewBuilderData> data = [
  GridViewBuilderData(
    itemName: "X-BURGUER",
    description: "1 Hamburguer, Mussarela e oregano",
    rating: "4.5",
    imagePath: "assets/x-burguer.jpeg",
  ),
  GridViewBuilderData(
    itemName: "X-SALADA",
    description: "1 Hamburguer, mussarela, oregano, alface, tomate e cheedar",
    rating: "3.9",
    imagePath: "assets/x-salada.png",
  ),
  GridViewBuilderData(
    itemName: "X-SALADA BACON",
    description:
        "1 Hamburguer, bacon, mussarela, oregano, alface, tomate e cheedar",
    rating: "4.1",
    imagePath: "assets/x-bacon.jpg",
  ),
  GridViewBuilderData(
    itemName: "X-SALADA EGG",
    description:
        "1 Hamburguer, 2 ovos, mussarela, oregano, alface, tomate e cheedar",
    rating: "3.7",
    imagePath: "assets/xs-egg.png",
  ),
];

class GridViewBuilderData {
  final String? imagePath, itemName, description, rating;

  GridViewBuilderData(
      {required this.description,
      required this.imagePath,
      required this.itemName,
      required this.rating});
}