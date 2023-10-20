import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/booking_page_view.dart';

class BookingPageController extends State<BookingPageView> {
  static late BookingPageController instance;
  late BookingPageView view;

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
