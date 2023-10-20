import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class StatusBookingView extends StatefulWidget {
  final int initialTabIndex; // Tambahkan parameter int
  StatusBookingView({Key? key, required this.initialTabIndex}) : super(key: key);

  Widget build(context, StatusBookingController controller) {
    controller.view = this;

    return DefaultTabController(
      length: _tabs.length,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Order Status",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black, // Icon "back"
            onPressed: () {
              // Fungsi yang dipanggil saat tombol "back" ditekan
              Navigator.of(context).pop();
            },
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromRGBO(255, 175, 0, 50),
            tabs: [
              Tab(text: 'Booking'),
              Tab(text: 'Cancel'),
              Tab(text: 'Done'),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }

  final List<Widget> _tabs = [
    const BookingPageView(),
    const CancelPageView(),
    const DonePageView(),
  ];
  
  @override
  State<StatusBookingView> createState() => StatusBookingController();
}
