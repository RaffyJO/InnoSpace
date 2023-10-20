import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/booking_information_view.dart';

class BookingInformationController extends State<BookingInformationView> {
  static late BookingInformationController instance;
  late BookingInformationView view;

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
