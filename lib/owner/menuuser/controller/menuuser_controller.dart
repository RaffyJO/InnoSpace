import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../view/menuuser_view.dart';

class MenuuserController extends State<MenuuserView> {
  static late MenuuserController instance;
  late MenuuserView view;
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
