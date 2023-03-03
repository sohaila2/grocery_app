class Items {
  String image;
  String itemName;
  String origin;
  String itemPrice;

  Items(
      {required this.image, required this.itemName, required this.origin, required this.itemPrice });

}

List<Items> items = [

  Items(image: "assets/banana1.jpeg", itemName: 'Banana', origin: 'ggg', itemPrice: "10"),
  Items(image: "assets/fruits.png", itemName: 'Apple', origin: 'ggg', itemPrice: '20'),
  Items(image: "assets/grapes.jpeg", itemName: 'Grapes', origin: 'ggg', itemPrice: '30'),
  Items(image: "assets/orange.jpeg", itemName: 'Oranges', origin: 'ggg', itemPrice: '40'),

];