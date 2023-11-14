import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/edit_product_view.dart';

class EditProductController extends State<EditProductView> {
  static late EditProductController instance;
  late EditProductView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
