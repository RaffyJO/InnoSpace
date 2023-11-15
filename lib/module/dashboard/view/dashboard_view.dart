import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    double screenWidth = MediaQuery.of(context).size.width;

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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NotifikasiView(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.notifications_active_outlined,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Container(
                        child: const Text(
                          "Selamat Sore, Raffy",
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
                          "Mau ngumpul dimana hari ini?",
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavbarupSpaceView(initialTabIndex: 0),
                                  ),
                                );
                              },
                              child: Expanded(
                                child: Column(children: <Widget>[
                                  const SizedBox(height: 5),
                                  Image.asset(
                                    "assets/aset/InnoWork.png",
                                    fit: BoxFit.cover,
                                  ),
                                  const Text(
                                    "InnoWork",
                                  ),
                                  const SizedBox(
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
                                        builder: (context) => NavbarupSpaceView(
                                            initialTabIndex: 1)));
                              },
                              child: Expanded(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      const SizedBox(height: 6),
                                      Image.asset(
                                        "assets/aset/InnoCafe2.png",
                                        fit: BoxFit.cover,
                                      ),
                                      const Text(
                                        "InnoCafe",
                                      ),
                                      const SizedBox(
                                        height: 4,
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
                                    builder: (context) => const InnocoinView(),
                                  ),
                                );
                              },
                              child: Expanded(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      const SizedBox(height: 5),
                                      Image.asset(
                                        "assets/aset/InnoCoin.png",
                                        fit: BoxFit.cover,
                                      ),
                                      const Text(
                                        "InnoCoin",
                                      ),
                                      const SizedBox(
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
                              child: Image.network(
                                imageUrls[index],
                                width: 300.0,
                                height: 120.0,
                                fit: BoxFit.fill,
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
                        height: screenWidth * 0.5, // 75% of the screen width
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 250,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Piskip",
                                  style: TextStyle(
                                    fontSize: screenWidth *
                                        0.06, // Adjust the font size
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                        fontSize: screenWidth *
                                            0.03, // Adjust the font size
                                      ),
                                    ),
                                    Text(
                                      "Kec. Lowokwaru, Kota Malang, Jawa Timur 65141",
                                      style: TextStyle(
                                        fontSize: screenWidth *
                                            0.03, // Adjust the font size
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on),
                                    SizedBox(height: screenWidth * 0.01),
                                    const Text("0.7 km"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.02,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor:
                              const Color.fromARGB(194, 255, 174, 0),
                          fixedSize: Size(screenWidth * 0.8,
                              screenWidth * 0.1), // Adjust the button size
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
                          style: TextStyle(
                              fontSize:
                                  screenWidth * 0.04), // Adjust the font size
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.02,
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
    "https://static.vecteezy.com/system/resources/previews/000/178/337/original/flash-sale-promotional-banner-template-for-marketing-vector.jpg",
    "https://static.vecteezy.com/system/resources/previews/000/175/898/original/vector-super-offer-advertising-banner-template-with-colorful-waves.jpg",
    "https://static.vecteezy.com/system/resources/previews/000/179/348/original/stylish-vector-banner-design-with-offer-details-for-advertising.jpg",
    // Tambahkan URL gambar lainnya di sini sesuai kebutuhan
  ];

  @override
  State<DashboardView> createState() => DashboardController();
}
