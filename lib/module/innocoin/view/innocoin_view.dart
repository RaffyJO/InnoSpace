import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/innocoin_controller.dart';

class InnocoinView extends StatefulWidget {
  const InnocoinView({Key? key}) : super(key: key);

  Widget build(context, InnocoinController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Coin",
          style: TextStyle(
            fontSize: 21.0,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(206, 255, 255, 255),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(194, 255, 174, 0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Coin",
                              style: TextStyle(
                                fontSize: 27.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Rp. 100.000",
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 15), // Add space below the text
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 20,
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 18,
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 16,
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 14,
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 12,
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.indigo,
                                  radius: 10,
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.purple,
                                  radius: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(194, 255, 174, 0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Column(
                  children: [
                    Container(
                        transform: Matrix4.translationValues(0, -60, 0),
                        margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.4), // Shadow color
                              blurRadius: 7, // Spread or blur radius
                              offset: const Offset(0, 0), // Offset from the top
                            ),
                          ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sekilas tentang InnoCoins",
                                style: TextStyle(
                                  fontSize: 21.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Card(
                                shadowColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Image.asset(
                                      "assets/aset/InnoCoin2.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: const Text(
                                    "Kamu bisa mendapatkan InnoCoins dari booking",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Image.asset(
                                      "assets/aset/innocoin4.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: const Text(
                                    "Kamu bisa pakai InnoCoins sebagai metode bayar buat hemat harga booking",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Image.asset(
                                      "assets/aset/innocoin5.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: const Text(
                                    "1 InnoCoins setara dengan Rp 1 ",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Image.asset(
                                      "assets/aset/innocoin3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: const Text(
                                    "InnoCoins tidak bisa diuangkan & ditransfer ke pengguna lain",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                              Card(
                                shadowColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Image.asset(
                                      "assets/aset/innocoin1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: const Text(
                                    "InnoCoins akan hangus 1 tahun selanjutnya sejak kamu terima",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<InnocoinView> createState() => InnocoinController();
}
