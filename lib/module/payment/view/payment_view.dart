import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

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
              height: 330,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tables",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "2 (4 sheets)",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Checkbox(
                              value: controller.isSelectedt,
                              onChanged: controller.onChangedt,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              "4 (8 sheets)",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Checkbox(
                              value: controller.isSelectedt2,
                              onChanged: controller.onChangedt2,
                            )
                          ],
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
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/aset/logo-gopay1.png",
                  ),
                ),
                title: const Text("Gopay"),
                subtitle: const Text("Via Dompet Elektronik"),
                trailing: Checkbox(
                  value: controller.isSelected,
                  onChanged: controller.onChanged,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/aset/bca.png",
                  ),
                ),
                title: const Text("Bank Central Asia"),
                subtitle: const Text("Via Dompet Elektronik"),
                trailing: Checkbox(
                  value: controller.isSelected2,
                  onChanged: controller.onChanged2,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/aset/dana.png",
                  ),
                ),
                title: const Text("Dana"),
                subtitle: const Text("Via Dompet Elektronik"),
                trailing: Checkbox(
                  value: controller.isSelected3,
                  onChanged: controller.onChanged3,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white, // Warna latar belakang
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Warna bayangan
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3), // Atur offset untuk bayangan ke atas
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "IDR 100.000",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: const Color.fromARGB(194, 255, 174, 0),
                fixedSize: const Size(200, 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentsView(),
                  ),
                );
              },
              child: Text(
                "Pay Now".toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<PaymentView> createState() => PaymentController();
}
