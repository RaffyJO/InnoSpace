import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/list_space_view.dart';

class ListSpaceController extends State<ListSpaceView> {
  static late ListSpaceController instance;
  late ListSpaceView view;

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
