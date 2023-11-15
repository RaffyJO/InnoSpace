import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import 'package:innospace/entities/order.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black, // Icon "back"
          onPressed: () {
            // Fungsi yang dipanggil saat tombol "back" ditekan
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OwnerWalletView(),
                ),
              );
            },
            icon: const Icon(Icons.account_balance_wallet),
            color: Colors.black,
          )
        ],
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
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Image(
                        image: NetworkImage(
                          "https://taplink.st/a/9/1/7/6/9a190c.png?1",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Piskip",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
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
                              fontWeight: FontWeight.w500),
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
                  const Text(
                    "Status Booking",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StatusBookingView(
                                initialTabIndex: 0,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey[300],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                orderList.length.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text("Booking"),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StatusBookingView(
                                initialTabIndex: 1,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey[300],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text("Cancel"),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StatusBookingView(
                                initialTabIndex: 2,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey[300],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
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
                      const Text(
                        "Inventory",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Lihat Dashboard   >",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 13),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ListSpaceView()),
                          );
                        },
                        child: Container(
                          color: Colors.white12,
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/aset/space.png",
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Space",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListProductView()),
                          );
                        },
                        child: Container(
                          color: Colors.white12,
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/aset/product.png",
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Product",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
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
                  const Text(
                    "Information",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
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
                                      child: Image.network(
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
    "https://taptalk.io/blog/wp-content/uploads/2022/09/Strategi-Pemasaran-scaled.jpg",
    "https://kledo.com/blog/wp-content/uploads/2022/11/strategi-penjualan-online.jpg",
    "https://thumbs.dreamstime.com/b/stock-market-word-concepts-banner-long-term-money-investment-strategy-infographics-linear-icons-blue-background-isolated-214219826.jpg",
    // Tambahkan URL gambar lainnya di sini sesuai kebutuhan
  ];

  @override
  State<OwnerDashboardView> createState() => OwnerDashboardController();
}
