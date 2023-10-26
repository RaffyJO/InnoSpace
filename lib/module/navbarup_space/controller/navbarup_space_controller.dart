import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/navbarup_space_view.dart';

class NavbarupSpaceController extends State<NavbarupSpaceView> {
  static late NavbarupSpaceController instance;
  late NavbarupSpaceView view;

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
