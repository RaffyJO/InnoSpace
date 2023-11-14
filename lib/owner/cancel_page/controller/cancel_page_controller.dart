import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/cancel_page_view.dart';

class CancelPageController extends State<CancelPageView> {
  static late CancelPageController instance;
  late CancelPageView view;

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
