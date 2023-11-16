import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import 'package:innospace/entities/order.dart';

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
        automaticallyImplyLeading: false,
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Booking List",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HistoryBookingView()));
            },
            child: const ImageIcon(
              AssetImage(
                "assets/aset/History.png",
              ),
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView.builder(
          itemCount: orderList.length,
          itemBuilder: (context, index) {
            Order order = orderList[index];
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 260,
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
                          Text(
                            order.storeType,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 15,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red[100],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: Text(
                                order.orderStatus,
                                style: const TextStyle(
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
                        "Order Id ${order.id}",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            order.storeName,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            order.paymentStatus ? "Lunas" : "Belum Lunas",
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black, // Warna garis
                        thickness: 1.0, // Ketebalan garis
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(order.date),
                          Text("${order.startTime} - ${order.endTime}"),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text("${order.room} Table (${order.chair} Seats)"),
                      const SizedBox(
                        height: 5,
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
                            child:
                                // ListView.builder(
                                //     itemCount: order.orders.length,
                                //     itemBuilder: (context, index) {
                                //       Text(order.orderStatus);
                                //       return null;
                                //     })
                                const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("- Nasi Goreng"),
                              ],
                            ),
                          ),
                          Container(
                            width: 120,
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("x5"),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                      Text(
                        order.paymentStatus ? " -" : "",
                        style: const TextStyle(color: Colors.blue),
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
                              if (order.paymentStatus) {
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const PaymentView();
                                    },
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 40),
                              backgroundColor:
                                  const Color.fromRGBO(255, 175, 0, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              order.paymentStatus ? "Done" : "Payment",
                              style: const TextStyle(color: Colors.black),
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
