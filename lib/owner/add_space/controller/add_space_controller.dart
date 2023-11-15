import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import 'package:innospace/entities/space.dart';

class AddSpaceController extends State<AddSpaceView> {
  static late AddSpaceController instance;
  late AddSpaceView view;

  String nama = "";
  int price = 0;
  bool availability = true;
  int chair = 0;
  String description = "";
  int table = 0;
  String imgUrl = "";

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void saveProduct() {
    // // Ambil nilai dari input pengguna
    // productName =  // Ambil nilai dari TextField 'Product Name'
    // num productPrice = // Ambil nilai dari TextField 'Price'
    // String category = widget.dropdownValue; // Ambil nilai dari DropdownMenu 'Category'
    // String stock = widget.dropdownValue2; // Ambil nilai dari DropdownMenu 'Stock'
    // String description = // Ambil nilai dari TextField 'Description'
    // String photo = controller.photo; // Ambil nilai dari QImagePicker 'Photo'

    // Buat objek Products baru
    Space newSpace = Space(
        name: nama,
        price: price,
        availability: availability,
        chair: chair,
        description: description,
        table: table,
        imgUrl: imgUrl);

    // Tambahkan produk baru ke dalam list productsList
    spaceList.add(newSpace);

    // Kembali ke halaman sebelumnya
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OwnerDashboardView(),
      ),
    );
  }
}
