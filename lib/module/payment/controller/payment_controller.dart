import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../view/payment_view.dart';

class PaymentController extends State<PaymentView> {
  static late PaymentController instance;
  late PaymentView view;
  bool isSelectedt = false;
  bool isSelectedt2 = false;
  bool isSelected = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void onChanged(bool? newValue) {
    setState(() {
      isSelected = newValue ?? false;
      isSelected2 = false;
      isSelected3 = false;
    });
  }

  void onChanged2(bool? newValue) {
    setState(() {
      isSelected2 = newValue ?? false;
      isSelected = false;
      isSelected3 = false;
    });
  }

  void onChanged3(bool? newValue) {
    setState(() {
      isSelected3 = newValue ?? false;
      isSelected2 = false;
      isSelected = false;
    });
  }

  void onChangedt(bool? newValue) {
    setState(() {
      isSelectedt = newValue ?? false;
      isSelectedt2 = false;
    });
  }

  void onChangedt2(bool? newValue) {
    setState(() {
      isSelectedt2 = newValue ?? false;
      isSelectedt = false;
    });
  }
}
