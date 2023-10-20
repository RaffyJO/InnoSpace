import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/booking_page_controller.dart';

class BookingPageView extends StatefulWidget {
  const BookingPageView({Key? key}) : super(key: key);

  Widget build(context, BookingPageController controller) {
    controller.view = this;

    return Scaffold(
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "InnoCafe",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red[100],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: const Center(
                              child: Text(
                                "Booked",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 7),
                      Text(
                        "Order Id 10043464289",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Taylor Swift",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Already Paid",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black, // Warna garis
                        thickness: 1.0, // Ketebalan garis
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("5 Oct 2023"),
                          Text("16.30 - 17.30"),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text("1 Room (4 Seats)"),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Orders",
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 8, right: 5),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- Kopi"),
                                Text("- Nasi Macan"),
                                Text("- Thai Tea"),
                              ],
                            ),
                          ),
                          Container(
                            width: 120,
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("x2"),
                                Text("x3"),
                                Text("x1"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 20,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 175, 0, 50),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: const Center(
                                    child: Text(
                                      "In Progress",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13),
                                    ),
                                  ),
                                )),
                          ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   style: ElevatedButton.styleFrom(
                          //     fixedSize: const Size(120, 40),
                          //     backgroundColor: Colors.white,
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(5),
                          //         side: const BorderSide(
                          //             color: Colors.grey, width: 1)),
                          //   ),
                          //   child: const Text(
                          //     "Process",
                          //     style: TextStyle(color: Colors.black),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  State<BookingPageView> createState() => BookingPageController();
}
