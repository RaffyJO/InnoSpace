import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../view/menuuser_view.dart';

class MenuuserController extends State<MenuuserView> {
  static late MenuuserController instance;
  late MenuuserView view;
  Map<int, int> itemTotals = {};

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

  void tambah(int index) {
    setState(() {
      itemTotals.update(index, (value) => value + 1, ifAbsent: () => 1);
    });
  }

  void kurang(int index) {
    setState(() {
      if (itemTotals.containsKey(index) && itemTotals[index]! > 0) {
        itemTotals[index] = itemTotals[index]! - 1;
      }
    });
  }

  int getItemTotal(int index) {
    return itemTotals[index] ?? 0;
  }
}
