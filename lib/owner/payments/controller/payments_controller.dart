import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/payments_view.dart';

class PaymentsController extends State<PaymentsView> {
  static late PaymentsController instance;
  late PaymentsView view;

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
