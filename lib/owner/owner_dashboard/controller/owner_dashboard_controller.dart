import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/owner_dashboard_view.dart';

class OwnerDashboardController extends State<OwnerDashboardView> {
  static late OwnerDashboardController instance;
  late OwnerDashboardView view;

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
