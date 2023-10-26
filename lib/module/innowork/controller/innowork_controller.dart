import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/innowork_view.dart';

class InnoworkController extends State<InnoworkView> {
  static late InnoworkController instance;
  late InnoworkView view;

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
