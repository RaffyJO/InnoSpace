// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class PaymentsViewDetails extends StatefulWidget {
  const PaymentsViewDetails({Key? key}) : super(key: key);

  @override
  State<PaymentsViewDetails> createState() => _PaymentsViewDetailsState();
}

class _PaymentsViewDetailsState extends State<PaymentsViewDetails> {
  @override
  Widget build(BuildContext context) {
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
                  "Transaksi Berhasil",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                    height: 200,
                    width: 200,
                    padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                      ),
                      child: const Icon(
                        Icons.done,
                        size: 120,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "24/10/2023 16:30:21",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
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
                builder: (context) =>
                    const FloatMainNavigationView(initialSelectedIndex: 0),
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
}
