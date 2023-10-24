import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 175, 0, 50),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          "InnoSpace",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Container(
                        child: const Text(
                          "Good afternoon, Raffy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 15, right: 15),
                      child: Container(
                        child: const Text(
                          "What kind of space do you need?",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  transform: Matrix4.translationValues(0, -40, 0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            offset: Offset(0, 2), // Posisi bayangan (x, y)
                            blurRadius: 2, // Radius blur bayangan
                            spreadRadius: 0.1, // Sebaran bayangan
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: const Expanded(
                                child: Column(children: <Widget>[
                                  SizedBox(height: 5),
                                  Expanded(
                                    child: ImageIcon(
                                      AssetImage(
                                        "assets/aset/InnoWork.png",
                                      ),
                                      color: Color.fromRGBO(255, 175, 0, 50),
                                    ),
                                  ),
                                  Text(
                                    "InnoWork",
                                  ),
                                  SizedBox(
                                    height: 6,
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const InnocafeView()));
                              },
                              child: const Expanded(
                                child: Column(children: <Widget>[
                                  SizedBox(height: 5),
                                  Expanded(
                                    child: ImageIcon(
                                      AssetImage(
                                        "assets/aset/InnoCafe2.png",
                                      ),
                                      color: Color.fromRGBO(255, 175, 0, 50),
                                    ),
                                  ),
                                  Text(
                                    "InnoCafe",
                                  ),
                                  SizedBox(
                                    height: 6,
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: const Expanded(
                                child: Column(children: <Widget>[
                                  SizedBox(height: 5),
                                  Expanded(
                                    child: ImageIcon(
                                      AssetImage(
                                        "assets/aset/InnoCoin2.png",
                                      ),
                                      color: Color.fromRGBO(255, 175, 0, 50),
                                    ),
                                  ),
                                  Text(
                                    "InnoCoin",
                                  ),
                                  SizedBox(
                                    height: 6,
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Promotions",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              // YourWidget(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                    height: 140.0,
                    child: ListView.builder(
                      itemCount: imageUrls.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imageUrls[index],
                                width: 300.0,
                                height: 120.0,
                                fit: BoxFit.cover,
                              ),
                            ));
                      },
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recently",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Piskip",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Recently Book",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Row(
                                  children: [
                                    Icon(Icons.bookmark),
                                    SizedBox(height: 5),
                                    Text("0.7 km"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor:
                              const Color.fromARGB(194, 255, 174, 0),
                          fixedSize: const Size(330, 50),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InnocafeDetailView(),
                            ),
                          );
                        },
                        child: Text(
                          "See More".toUpperCase(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> imageUrls = [
    "assets/aset/Promo.png",
    "assets/aset/Promo.png",
    "assets/aset/Promo.png",
    // Tambahkan URL gambar lainnya di sini sesuai kebutuhan
  ];

  @override
  State<DashboardView> createState() => DashboardController();
}
