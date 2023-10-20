import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/payment_controller.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({Key? key}) : super(key: key);

  Widget build(context, PaymentController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Confirmation",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Warna bayangan
                    offset: Offset(0, 2), // Posisi bayangan (x, y)
                    blurRadius: 2, // Radius blur bayangan
                    spreadRadius: 0.1, // Sebaran bayangan
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Order Details",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 7),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name"),
                        Text(
                          "Taylor Swift",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location"),
                        Text(
                          "Piskip, Kota Malang",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Jl. Pisang Kipas No.6, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Booking Time"),
                        Text(
                          "4 Oct 2023",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Start 16:00 WIB, end 18.00 WIB",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Room"),
                        Text(
                          "Outdoor cafe: 4 seats, 1 tables",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black, // Warna garis
                      thickness: 1.0, // Ketebalan garis
                    ),
                    const Text(
                      "Total",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.yellow[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text(
                              "Add Voucher",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const Text(
                          "IDR 100.000",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                "Select Payment",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage(
                        "assets/aset/logo-gopay1.png",
                      ),
                    ),
                    Text("Gopay"),
                  ],
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(
                      color: isSelected ? Colors.blue : Colors.grey))),
              child: const Text("Gopay"),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ListView.builder(
            //       itemCount: 4,
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding:
            //               const EdgeInsets.only(left: 15, right: 15, top: 15),
            //           child: Container(
            //             height: 100,
            //             width: MediaQuery.of(context).size.width,
            //             decoration: const BoxDecoration(color: Colors.grey),
            //           ),
            //         );
            //       }),
            // )
          ],
        ),
      ),
    );
  }

  final bool isSelected = false;

  @override
  State<PaymentView> createState() => PaymentController();
}
