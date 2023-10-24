import 'package:flutter/material.dart';
import 'package:innospace/module/payment/view/payment_view.dart';

class BookingListView extends StatefulWidget {
  const BookingListView({super.key});

  @override
  State<BookingListView> createState() => _BookingListViewState();
}

class _BookingListViewState extends State<BookingListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Booking List",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: const [
          ImageIcon(
            AssetImage(
              "assets/aset/History.png",
            ),
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 220,
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
                                "Pending",
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
                        height: 7,
                      ),
                      const Text(
                        "Complete your payment before",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "5 Oct 2023 - 16:30:00",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 40),
                              backgroundColor: Colors.grey[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PaymentView();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 40),
                              backgroundColor:
                                  const Color.fromRGBO(255, 175, 0, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              "Payment",
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
}
