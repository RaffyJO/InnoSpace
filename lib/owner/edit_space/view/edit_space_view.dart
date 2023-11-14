import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class EditSpaceView extends StatefulWidget {
  EditSpaceView({Key? key}) : super(key: key);

  Widget build(context, EditSpaceController controller) {
    controller.view = this;

    final TextEditingController spaceNameController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController tableController = TextEditingController();
    final TextEditingController seatsController = TextEditingController();

    spaceNameController.text = "Out Door";
    priceController.text = "100000";
    descriptionController.text =
        "If you love to be outside maybe this type of place match with you";
    tableController.text = "1";
    seatsController.text = "4";

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Edit Space",
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
              child: QImagePicker(
                label: "Photo",
                // validator: Validator.required,
                value: null,
                onChanged: (value) {
                  // controller.photo = (value);
                },
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
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: spaceNameController,
                        decoration: const InputDecoration(
                            labelText: 'Name Room',
                            hintText: "Masukkan Nama Room..."),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            child: TextField(
                              controller: tableController,
                              decoration: const InputDecoration(
                                labelText: 'Table',
                                hintText: '0',
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 50,
                            child: TextField(
                              controller: seatsController,
                              decoration: const InputDecoration(
                                labelText: 'Seats',
                                hintText: '0',
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        controller: priceController,
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          hintText: "Masukkan Harga...",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
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
                            EditSpaceController.instance.setState(() {
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
                            EditSpaceController.instance.setState(() {
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
                            EditSpaceController.instance.setState(() {
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
                            EditSpaceController.instance.setState(() {
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
                            EditSpaceController.instance.setState(() {
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
                            EditSpaceController.instance.setState(() {
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Update",
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

  bool _isWifi = true;
  bool _isToilet = false;
  bool _isFood = true;
  bool _isParkir = false;
  bool _isDrink = true;
  bool _isCoffe = true;

  @override
  State<EditSpaceView> createState() => EditSpaceController();
}
