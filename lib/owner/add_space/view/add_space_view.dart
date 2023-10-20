import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/add_space_controller.dart';

class AddSpaceView extends StatefulWidget {
  AddSpaceView({Key? key}) : super(key: key);

  Widget build(context, AddSpaceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Add Space",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 15, right: 15),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text("Add Picture"),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 5, bottom: 20, left: 15, right: 15),
              child: const Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        // controller: _namaController,
                        decoration: InputDecoration(
                            labelText: 'Name Room',
                            hintText: "Masukkan Nama Room..."),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Table',
                                hintText: '0',
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Seats',
                                hintText: '0',
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Price',
                          hintText: "Masukkan Harga...",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        // controller: _namaController,
                        decoration: InputDecoration(
                            labelText: 'Description',
                            hintText: "Masukkan Deskripsi..."),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Container(
                margin: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Fasilities",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            AddSpaceController.instance.setState(() {
                              _isWifi = !_isWifi;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: (_isWifi)
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/aset/wifi.png"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Wifi",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            AddSpaceController.instance.setState(() {
                              _isToilet = !_isToilet;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: (_isToilet)
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/aset/toilet.png"),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Toilet",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            AddSpaceController.instance.setState(() {
                              _isFood = !_isFood;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: (_isFood)
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/aset/food.png"),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Food",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            AddSpaceController.instance.setState(() {
                              _isParkir = !_isParkir;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: (_isParkir)
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/aset/parking.png"),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Parking Area",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            AddSpaceController.instance.setState(() {
                              _isDrink = !_isDrink;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: (_isDrink)
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/aset/drink.png"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Drink",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            AddSpaceController.instance.setState(() {
                              _isCoffe = !_isCoffe;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: (_isCoffe)
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/aset/coffe.png"),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  "Coffee",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(255, 175, 0, 50),
                          minimumSize: const Size(400, 40),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  bool _isWifi = false;
  bool _isToilet = false;
  bool _isFood = false;
  bool _isParkir = false;
  bool _isDrink = false;
  bool _isCoffe = false;

  @override
  State<AddSpaceView> createState() => AddSpaceController();
}
