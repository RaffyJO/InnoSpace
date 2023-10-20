import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/owner_dashboard_controller.dart';

class OwnerDashboardView extends StatefulWidget {
  OwnerDashboardView({Key? key}) : super(key: key);

  Widget build(context, OwnerDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Outlet",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                        "",
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KopiSip",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Jl. Pisang Kipas No.6, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 175, 0, 50),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Center(
                        child: Text(
                          "InnoCafe",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                )),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Status Booking"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey[300],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "3",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text("Booking"),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey[300],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "3",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text("Cancel"),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey[300],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "3",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text("Done"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Inventory"),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Lihat Dashboard   >")),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.grey[300],
                          height: 150,
                          width: 150,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Nanti ini gambar"),
                              Text("Space"),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.grey[300],
                          height: 150,
                          width: 150,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Nanti ini gambar"),
                              Text("Space"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Information"),
                  Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: SizedBox(
                          height: 140.0,
                          child: ListView.builder(
                              itemCount: imageUrls.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        imageUrls[index],
                                        width: 350.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ));
                              })))
                ],
              ),
            )
          ],
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
  State<OwnerDashboardView> createState() => OwnerDashboardController();
}
