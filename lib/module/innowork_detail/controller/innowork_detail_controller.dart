import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/innowork_detail_view.dart';

class InnoworkDetailController extends State<InnoworkDetailView> {
  static late InnoworkDetailController instance;
  late InnoworkDetailView view;

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
