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
      name: "Nasi Goreng",
      price: 20000,
      description: "Nasi Goreng yang enak dan murah",
      availability: true,
      type: "food",
      imgUrl:
          "https://awsimages.detik.net.id/community/media/visual/2021/04/22/5-makanan-enak-dari-indonesia-dan-malaysia-yang-terkenal-enak-5.jpeg?w=600&q=90"),
  Products(
      name: "Bakso",
      price: 12000,
      description: "Bakso enak banget",
      availability: true,
      type: "food",
      imgUrl:
          "https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/the-ultimate-guide-to-must-try-indonesian-food/bakso.jpg"),
  Products(
      name: "Terang Bulan",
      price: 19000,
      description: "Terang Bulan enak dan manis",
      availability: true,
      type: "food",
      imgUrl:
          "https://rebornprojectmedia.com/wp-content/uploads/2019/03/resep-martabak-manis.jpg"),
  Products(
      name: "Sate Ayam",
      price: 25000,
      description: "Sate Ayam gurih",
      availability: true,
      type: "food",
      imgUrl:
          "https://paragram.id/upload/media/entries/2022-03/22/34695-1-812ff7af7dbf599c0a5b41b6a6b2c374.jpg"),
  Products(
      name: "Matcha",
      price: 12000,
      description: "Matcha seger dan enak",
      availability: true,
      type: "drink",
      imgUrl:
          "https://i0.wp.com/www.acozykitchen.com/wp-content/uploads/2017/04/IcedMatchaLatte-1.jpg?w=720&ssl=1"),
  Products(
      name: "Ice Coffee",
      price: 14000,
      description: "Bikin melek terus",
      availability: true,
      type: "drink",
      imgUrl:
          "https://storyblok-cdn.ef.com/f/60990/960x1280/6ecfae7124/kopi-susu.jpg"),
];
