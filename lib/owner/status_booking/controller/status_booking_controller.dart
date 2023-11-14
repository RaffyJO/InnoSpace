import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/status_booking_view.dart';

class StatusBookingController extends State<StatusBookingView> {
  static late StatusBookingController instance;
  late StatusBookingView view;

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
