import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import 'package:innospace/entities/product.dart';

class AddProductController extends State<AddProductView> {
  static late AddProductController instance;
  late AddProductView view;

  String nama = '';
  int price = 0;
  String description = '';
  String availability = '';
  String type = '';
  String imgUrl = '';

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
    // Buat objek Products baru
    Products newProduct = Products(
      name: nama,
      price: price,
      description: description,
      availability: availability == 'Available',
      type: type.toLowerCase(),
      imgUrl: imgUrl,
    );

    // Tambahkan produk baru ke dalam list productsList
    productsList.add(newProduct);

    // Kembali ke halaman sebelumnya
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OwnerDashboardView(),
      ),
    );
  }
}
