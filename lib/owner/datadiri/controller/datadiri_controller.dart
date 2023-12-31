import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/datadiri_view.dart';

class DatadiriController extends State<DatadiriView> {
  static late DatadiriController instance;
  late DatadiriView view;

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
