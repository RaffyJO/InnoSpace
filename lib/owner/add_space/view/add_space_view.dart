import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/add_space_controller.dart';

class AddSpaceView extends StatefulWidget {
  const AddSpaceView({Key? key}) : super(key: key);

  Widget build(context, AddSpaceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Add Space",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
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
                    const Text("Fasilities"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 175, 0, 50),
                          ),
                          child: const Column(
                            children: [],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Column(
                            children: [],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 175, 0, 50),
                          ),
                          child: const Column(
                            children: [],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Column(
                            children: [],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 175, 0, 50),
                          ),
                          child: const Column(
                            children: [],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 175, 0, 50),
                          ),
                          child: const Column(
                            children: [],
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

  @override
  State<AddSpaceView> createState() => AddSpaceController();
}
