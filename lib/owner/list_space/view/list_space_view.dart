import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import 'package:innospace/entities/space.dart';

class ListSpaceView extends StatefulWidget {
  const ListSpaceView({Key? key}) : super(key: key);

  Widget build(context, ListSpaceController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          title: const Text(
            "List Space",
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
        body: SafeArea(
          child: Stack(
            children: [
              ListView.builder(
                  itemCount: spaceList.length,
                  itemBuilder: (context, index) {
                    Space space = spaceList[index];
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Container(
                        height: 325,
                        decoration: const BoxDecoration(
                          color: Colors.white10,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                space.imgUrl,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width / 2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                transform: Matrix4.translationValues(0, -40, 0),
                                height: 30,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 175, 0, 50),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
                                  child: Text(
                                    space.availability ? "Tersedia" : "Penuh",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              space.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${space.table} Meja, ${space.chair} Kursi",
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text("Rp${space.price}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 300,
                                    child: Text(
                                      space.description,
                                      style: const TextStyle(fontSize: 13),
                                    )),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      minimumSize: const Size(60, 30),
                                      side: const BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditSpaceView()),
                                      );
                                    },
                                    child: const Text(
                                      "Edit",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 175, 0, 50),
                      minimumSize: const Size(350, 40),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddSpaceView()),
                      );
                    },
                    child: const Text(
                      "Add New Space",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  State<ListSpaceView> createState() => ListSpaceController();
}
