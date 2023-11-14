import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/done_page_view.dart';

class DonePageController extends State<DonePageView> {
  static late DonePageController instance;
  late DonePageView view;

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
