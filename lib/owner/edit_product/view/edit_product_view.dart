import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class EditProductView extends StatefulWidget {
  EditProductView({Key? key}) : super(key: key);

  Widget build(context, EditProductController controller) {
    controller.view = this;

    String dropdownValue = listCategory.first;
    String dropdownValue2 = listStock.first;

    final TextEditingController productNameController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    productNameController.text = "Thai Tea";
    priceController.text = "10000";
    descriptionController.text = "Minum teh yang enak dan murah";

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Edit Product",
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
                        controller: productNameController,
                        decoration: const InputDecoration(
                          labelText: 'Product Name',
                          hintText: "Masukkan Nama Produk...",
                        ),
                      ),
                      TextField(
                        controller: priceController,
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          hintText: "Masukkan Harga...",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Category"),
                      const SizedBox(
                        height: 10,
                      ),
                      DropdownMenu<String>(
                        initialSelection: listCategory.first,
                        hintText: "Choose",
                        onSelected: (String? value) {
                          // This is called when the user selects an item.
                          EditProductController.instance.setState(() {
                            dropdownValue = value!;
                          });
                        },
                        dropdownMenuEntries: listCategory
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Stock"),
                      const SizedBox(
                        height: 10,
                      ),
                      DropdownMenu<String>(
                        initialSelection: listStock.first,
                        hintText: "Choose",
                        onSelected: (String? value) {
                          // This is called when the user selects an item.
                          EditProductController.instance.setState(() {
                            dropdownValue2 = value!;
                          });
                        },
                        dropdownMenuEntries: listStock
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                          );
                        }).toList(),
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          hintText: "Masukkan Deskripsi...",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 175, 0, 50),
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
            ),
          ],
        ),
      ),
    );
  }

  List<String> listCategory = <String>['Drink', 'Food'];
  List<String> listStock = <String>['Available', 'Not Available'];

  @override
  State<EditProductView> createState() => EditProductController();
}
