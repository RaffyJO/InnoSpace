import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/innocoin_view.dart';

class InnocoinController extends State<InnocoinView> {
  static late InnocoinController instance;
  late InnocoinView view;

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
