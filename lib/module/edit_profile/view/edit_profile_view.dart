import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 175, 0, 50),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.black, // Icon "back"
                        onPressed: () {
                          // Fungsi yang dipanggil saat tombol "back" ditekan
                          Navigator.of(context).pop();
                        },
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FloatMainNavigationView(
                                          initialSelectedIndex: 2)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 15, left: 15),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    backgroundImage: AssetImage(
                      "assets/aset/taylor.png",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Taylor Swift",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Container(
                child: const Column(
                  children: [
                    TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        hintText: "Masukkan Nama Depan...",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: "Masukkan Nama Belakang...",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        hintText: "Masukkan Tanggal Lahir...",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: "Masukkan Nomor Telefon...",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        hintText: "Masukkan E-Mail...",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  State<EditProfileView> createState() => EditProfileController();
}
