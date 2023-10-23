import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/innocafe_view.dart';

class InnocafeController extends State<InnocafeView> {
  static late InnocafeController instance;
  late InnocafeView view;

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
