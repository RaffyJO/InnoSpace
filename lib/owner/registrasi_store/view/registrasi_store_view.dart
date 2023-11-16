import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class RegistrasiStoreView extends StatefulWidget {
  RegistrasiStoreView({Key? key}) : super(key: key);

  Widget build(context, RegistrasiStoreController controller) {
    controller.view = this;

    String dropdownValue = storeType.first;

    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          title: const Text(
            "Atur Informasi Toko",
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
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 15, right: 15),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                          labelText: 'Nama Toko',
                          hintText: "Masukkan Nama Toko..."),
                    ),
                    const TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                          labelText: 'Alamat Toko',
                          hintText: "Masukkan Alamat Toko..."),
                    ),
                    const TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                          labelText: 'Email', hintText: "Masukkan Email..."),
                    ),
                    const TextField(
                      // controller: _namaController,
                      decoration: InputDecoration(
                          labelText: 'Nomor Telepon',
                          hintText: "Masukkan Nomor Telepon..."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Jenis Toko"),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownMenu<String>(
                      initialSelection: storeType.first,
                      hintText: "Choose",
                      onSelected: (String? value) {
                        // This is called when the user selects an item.
                        RegistrasiStoreController.instance.setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries: storeType
                          .map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OwnerDashboardView()));
          },
          backgroundColor: const Color.fromRGBO(255, 175, 0, 50),
          label: const Text(
            'Lanjut',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ));
  }

  List<String> storeType = <String>['InnoWork', 'InnoCafe'];

  @override
  State<RegistrasiStoreView> createState() => RegistrasiStoreController();
}
