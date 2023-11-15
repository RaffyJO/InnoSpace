import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({Key? key}) : super(key: key);

  Widget build(context, PaymentsController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(
              194, 255, 174, 0), // Setel latar belakang menjadi kuning
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  "Your QR Code Order",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Image.asset(
                    "assets/aset/barcode.png", // Ganti dengan asset barcode yang sesuai
                    // Sesuaikan uran barcode sesuai kebutuhan
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Scan kode QR ini",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ),
              const Center(
                child: Text(
                  "untuk melakukan proses pembayaran",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 60),
        decoration: const BoxDecoration(
          color: Color.fromARGB(194, 255, 174, 0),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(100, 50),
            maximumSize: const Size(100, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            fixedSize: const Size(200, 40),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentsViewDetails(),
              ),
            );
          },
          child: Text(
            "Done".toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  State<PaymentsView> createState() => PaymentsController();
}
