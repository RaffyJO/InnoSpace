import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/owner_wallet_view.dart';

class OwnerWalletController extends State<OwnerWalletView> {
  static late OwnerWalletController instance;
  late OwnerWalletView view;

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
