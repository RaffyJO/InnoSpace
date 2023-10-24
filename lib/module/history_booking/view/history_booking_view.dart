import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/history_booking_controller.dart';

class HistoryBookingView extends StatefulWidget {
  const HistoryBookingView({Key? key}) : super(key: key);

  Widget build(context, HistoryBookingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black, // Icon "back"
          onPressed: () {
            // Fungsi yang dipanggil saat tombol "back" ditekan
            Navigator.of(context).pop();
          },
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "History",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 185,
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
                                "Done",
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
                      const Text(
                        "Piskip",
                        style: TextStyle(fontWeight: FontWeight.w700),
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              backgroundColor:
                                  const Color.fromRGBO(255, 175, 0, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              "Booking Again",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
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
  State<HistoryBookingView> createState() => HistoryBookingController();
}
