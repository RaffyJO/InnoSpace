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
      imgUrl:
          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiqG_nmnBisGx3RnRJBp3ZjU0Ae8X9bhBtYTTVUHZDGEVFVp1xl9p4sBh5gVUSE9EiNd5zXjvV_PGDU4-zKPrPsz8Orw60eqxGW7np3kDz7bmB4myFO-CopbLoMSP5nrZe4JxpD37zDBWcV47eWVdy1WR8VaKK5yhoYRkPnM5Ruo_QPCyLRJPAvuWy5/s16000/cafe%20di%20suhat%20malang.jpg"),
];
