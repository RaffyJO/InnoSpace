import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class InnocafeDetailView extends StatefulWidget {
  const InnocafeDetailView({Key? key}) : super(key: key);

  Widget build(context, InnocafeDetailController controller) {
    final List<Map<String, String>> facilities = [
      {"name": "Wifi", "icon": "wifi"},
      {"name": "Toilet", "icon": "restroom"},
      {"name": "Makanan", "icon": "fastfood"},
      {"name": "Parkir Space", "icon": "local_parking"},
      {"name": "Minuman", "icon": "local_drink"},
      {"name": "Coffee", "icon": "coffee"},
    ];
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 175, 0, 50),
        title: const Text("Information"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 215,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        "https://lh3.googleusercontent.com/p/AF1QipPy2oI7s7s6i3WQa3TNCNKlCtPtZp_76vRzlM-G=s1360-w1360-h1020",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Piskip",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text(
                  //   "Recently Book",
                  //   style: TextStyle(
                  //     fontSize: 17.0,
                  //   ),
                  // ),
                  SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jl. Pisang Kipas No.6, Jatimulyo, ",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Kec. Lowokwaru, Kota Malang, Jawa Timur 65141",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 4,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(80, 100, 100, 100),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: const Text(
                "Fasilitas :",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 columns
                  childAspectRatio: 3 / 2, // 2 rows
                ),
                itemCount: facilities.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final facility = facilities[index];
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _getIconData(facility["icon"]!),
                          size: 60.0, // Adjust icon size as needed
                        ),
                        Text(
                          facility["name"]!,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              height: 4,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(80, 100, 100, 100),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: const Text(
                "Rooms :",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: SizedBox(
                width: double.infinity,
                height: 250,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiqG_nmnBisGx3RnRJBp3ZjU0Ae8X9bhBtYTTVUHZDGEVFVp1xl9p4sBh5gVUSE9EiNd5zXjvV_PGDU4-zKPrPsz8Orw60eqxGW7np3kDz7bmB4myFO-CopbLoMSP5nrZe4JxpD37zDBWcV47eWVdy1WR8VaKK5yhoYRkPnM5Ruo_QPCyLRJPAvuWy5/s16000/cafe%20di%20suhat%20malang.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Tambahkan teks di bawah gambar
                    Positioned(
                      bottom: 15,
                      left: 130,
                      right: 130,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color.fromARGB(255, 255, 174, 0),
                        ),
                        height: 45,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          "Available",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Out Door",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "1 Table, 4 chair",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "If you love to be inside maybe",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        "this type of place match with you",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white, // Warna latar belakang
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Warna bayangan
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3), // Atur offset untuk bayangan ke atas
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "IDR 0",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: const Color.fromARGB(194, 255, 174, 0),
                fixedSize: const Size(190, 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuuserView(),
                  ),
                );
              },
              child: Text(
                "Order Food".toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case "wifi":
        return Icons.wifi;
      case "restroom":
        return Icons.wc;
      case "fastfood":
        return Icons.fastfood;
      case "local_parking":
        return Icons.local_parking;
      case "local_drink":
        return Icons.local_drink;
      case "coffee":
        return Icons.coffee;
      default:
        return Icons.error; // You can choose an appropriate default icon.
    }
  }

  @override
  State<InnocafeDetailView> createState() => InnocafeDetailController();
}
