import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class StatusBookingView extends StatefulWidget {
  StatusBookingView({Key? key}) : super(key: key);

  Widget build(context, StatusBookingController controller) {
    controller.view = this;

    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Order Status",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
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

  final int _currentIndex = 0;

  @override
  State<StatusBookingView> createState() => StatusBookingController();
}
