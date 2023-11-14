class Products {
  String name;
  int price;
  String description;
  String imgUrl;
  String type;
  bool availability;

  Products(
      {required this.name,
      required this.price,
      required this.description,
      required this.availability,
      required this.type,
      required this.imgUrl});
}

var productsList = [
  Products(
      name: "Thai Tea",
      price: 10000,
      description: "Minuman teh yang enak dan murah",
      availability: true,
      type: "drink",
      imgUrl: "assets/aset/Minuman.webp"),
  Products(
      name: "Ayam Geprek",
      price: 15000,
      description: "Ayam Geprek enak banget",
      availability: false,
      type: "food",
      imgUrl: "assets/aset/AyamGeprek.png"),
];
