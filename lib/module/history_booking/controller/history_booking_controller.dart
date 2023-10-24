import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/history_booking_view.dart';

class HistoryBookingController extends State<HistoryBookingView> {
  static late HistoryBookingController instance;
  late HistoryBookingView view;

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
