import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/signup_page_view.dart';

class SignupPageController extends State<SignupPageView> {
  static late SignupPageController instance;
  late SignupPageView view;

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
