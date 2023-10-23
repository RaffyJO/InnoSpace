import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/innocafe_detail_view.dart';

class InnocafeDetailController extends State<InnocafeDetailView> {
  static late InnocafeDetailController instance;
  late InnocafeDetailView view;

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
