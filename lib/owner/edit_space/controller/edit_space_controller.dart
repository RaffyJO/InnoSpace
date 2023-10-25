import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/edit_space_view.dart';

class EditSpaceController extends State<EditSpaceView> {
  static late EditSpaceController instance;
  late EditSpaceView view;

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
