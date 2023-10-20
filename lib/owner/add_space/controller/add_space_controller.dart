import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/add_space_view.dart';

class AddSpaceController extends State<AddSpaceView> {
  static late AddSpaceController instance;
  late AddSpaceView view;

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
