import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/list_product_controller.dart';

class ListProductView extends StatefulWidget {
  ListProductView({Key? key}) : super(key: key);

  Widget build(context, ListProductController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "List Product",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: drink + food,
            itemBuilder: (context, index) {
              if (index < drink) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white10,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    padding: const EdgeInsets.only(left: 5, right: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 10, top: 5, bottom: 5),
                              child: Image.asset(
                                "assets/aset/Minuman.webp",
                                width: 50.0,
                                height: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Thai Tea",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Rp.10.000",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: Text("Minum teh yang enak dan murah"),
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[200],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: const Center(
                                child: Text(
                                  "Available",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size(60, 30),
                              side: const BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Edit",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white10,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    padding: const EdgeInsets.only(left: 5, right: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 10, top: 5, bottom: 5),
                              child: Image.asset(
                                "assets/aset/AyamGeprek.png",
                                width: 50.0,
                                height: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ayam Geprek",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Rp.15.000",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: Text("Ayam Geprek enak banget"),
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[200],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: const Center(
                                child: Text(
                                  "Available",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size(60, 30),
                              side: const BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Edit",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 175, 0, 50),
                  minimumSize: const Size(400, 40),
                ),
                onPressed: () {},
                child: const Text(
                  "Add New Product",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int drink = 4;
  int food = 2;
  final List<String> drinks = [];

//   List<Drink> drinks = [
//     Drink(
//       name: "Thai Tea",
//       price: 10000,
//       available: true,
//       description: "Minum teh yang enak dan murah",
//     ),
//     Drink(
//       name: "Es Kopi Susu",
//       price: 15000,
//       available: true,
//       description: "Minum kopi yang enak dan segar",
//     ),
//     Drink(
//       name: "Jus Alpukat",
//       price: 20000,
//       available: true,
//       description: "Minum jus buah alpukat yang menyegarkan",
//     ),
//   ];

//   List<Food> foods = [
//   Food(
//     name: "Nasgor",
//     price: 10000,
//     available: true,
//     description: "Makan nasi goreng yang enak dan murah",
//   ),
//   Food(
//     name: "Indomie Goreng",
//     price: 15000,
//     available: true,
//     description: "Makan Indomie goreng yang enak dan lezat",
//   ),
//   Food(
//     name: "Soto Ayam",
//     price: 20000,
//     available: true,
//     description: "Makan soto ayam yang enak dan gurih",
//   ),
// ];

  @override
  State<ListProductView> createState() => ListProductController();
}

class Drink {
  String name = "";
  num price = 0;
  bool available = false;
  String description = "";

  Drink(String name, num price, bool available, String description) {
    this.name = name;
    this.price = price;
    this.available = available;
    this.description = description;
  }
}
