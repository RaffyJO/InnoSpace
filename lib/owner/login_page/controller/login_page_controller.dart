import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/login_page_view.dart';

class LoginPageController extends State<LoginPageView> {
  static late LoginPageController instance;
  late LoginPageView view;

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
