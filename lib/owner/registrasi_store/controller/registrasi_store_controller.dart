
import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../view/registrasi_store_view.dart';

class RegistrasiStoreController extends State<RegistrasiStoreView> {
    static late RegistrasiStoreController instance;
    late RegistrasiStoreView view;

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
        
    