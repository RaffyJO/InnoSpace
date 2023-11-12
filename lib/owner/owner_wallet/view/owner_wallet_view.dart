import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/owner_wallet_controller.dart';

class OwnerWalletView extends StatefulWidget {
  const OwnerWalletView({Key? key}) : super(key: key);

  Widget build(context, OwnerWalletController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Owner Wallet",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black, // Icon "back"
          onPressed: () {
            // Fungsi yang dipanggil saat tombol "back" ditekan
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 175, 0, 50),
                  borderRadius: BorderRadius.circular(
                      15.0), // Sesuaikan dengan radius yang Anda inginkan
                ),
                padding: const EdgeInsets.only(
                    left: 15, right: 20, top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            10.0), // Sesuaikan dengan radius yang Anda inginkan
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Current Balance",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Rp200.000",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Icon(Icons.file_download_outlined)),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Withdraw",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Recent Transactions",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height - 230,
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 175, 0, 50),
                              borderRadius: BorderRadius.circular(
                                  15.0), // Sesuaikan dengan radius yang Anda inginkan
                            ),
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/aset/uang1.jpg",
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.none,
                                  // Sesuaikan dengan kebutuhan Anda
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 7.0, top: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Jumat, 11 Agustus 2023",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Text(
                                        "Income",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "+ Rp25.000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[700]),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ));
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OwnerWalletView> createState() => OwnerWalletController();
}
