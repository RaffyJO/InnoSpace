import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../view/menuuser2_view.dart';

class Menuuser2Controller extends State<Menuuser2View> {
  static late Menuuser2Controller instance;
  late Menuuser2View view;
  int total = 0;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  void tambah() {
    setState(() {
      total++;
    });
  }

  void kurang() {
    setState(() {
      if (total > 0) {
        total--;
      }
    });
  }
}
