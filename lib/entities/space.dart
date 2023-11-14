class Space {
  String name;
  int price;
  String description;
  int table;
  int chair;
  bool availability;
  String imgUrl;

  Space(
      {required this.name,
      required this.price,
      required this.availability,
      required this.chair,
      required this.description,
      required this.table,
      required this.imgUrl});
}

var spaceList = [
  Space(
      name: "Out Door",
      price: 0,
      availability: true,
      chair: 4,
      description:
          "If you love to be outside maybe this type of place match with you",
      table: 1,
      imgUrl: "assets/aset/fotoCafe.png"),
];
