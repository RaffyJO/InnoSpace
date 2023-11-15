import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class NavbarupSpaceView extends StatefulWidget {
  final int initialTabIndex;
  NavbarupSpaceView({Key? key, required this.initialTabIndex})
      : super(key: key);

  Widget build(context, NavbarupSpaceController controller) {
    const String location = 'Malang';
    final String currentDate =
        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';
    final String currentTime = TimeOfDay.now().format(context);
    final String currentTimelast = 'Now :$currentTime';
    controller.view = this;

    return DefaultTabController(
      length: _tabs.length,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(1, 7, 1, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    controller.popup();
                  },
                  child: _buildCard(
                    location,
                    Icons.location_on,
                  ),
                ),
                _buildCard(
                  currentDate,
                  Icons.calendar_today,
                ),
                _buildCard(
                  currentTimelast,
                  Icons.access_time,
                ),
              ],
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromRGBO(255, 175, 0, 50),
            tabs: [
              Tab(text: 'InnoWork'),
              Tab(text: 'InnoCafe'),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }

  Widget _buildCard(String data, IconData icon) {
    return Card(
      color: Colors.grey[300],
      child: Container(
        height: 35,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 3),
                Text(
                  data,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final List<Widget> _tabs = [const InnoworkView(), const InnocafeView()];

  @override
  State<NavbarupSpaceView> createState() => NavbarupSpaceController();
}
