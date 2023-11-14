import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class FloatMainNavigationView extends StatefulWidget {
  final int initialSelectedIndex;
  const FloatMainNavigationView({Key? key, required this.initialSelectedIndex})
      : super(key: key);

  @override
  State<FloatMainNavigationView> createState() =>
      _FloatMainNavigationViewState(initialSelectedIndex);
}

class _FloatMainNavigationViewState extends State<FloatMainNavigationView> {
  int selectedIndex;
  _FloatMainNavigationViewState(this.selectedIndex);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: selectedIndex,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: selectedIndex,
          children: [
            DashboardView(),
            const BookingListView(),
            const UserProfileView()
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 248, 248, 248),
          notchMargin: 4,
          child: SizedBox(
            height: 71.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        selectedIndex = 0;
                        setState(() {});
                      },
                      child: Expanded(
                        child: Column(children: <Widget>[
                          Expanded(
                            child: ImageIcon(
                              const AssetImage(
                                "assets/aset/Overview.png",
                              ),
                              color: selectedIndex == 0
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.blueGrey[600],
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: selectedIndex == 0
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.blueGrey[600],
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        selectedIndex = 1;
                        setState(() {});
                      },
                      child: Expanded(
                        child: Column(children: <Widget>[
                          Expanded(
                            child: ImageIcon(
                              const AssetImage(
                                "assets/aset/Transaction.png",
                              ),
                              color: selectedIndex == 1
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.blueGrey[600],
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "Bookings",
                            style: TextStyle(
                              color: selectedIndex == 1
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.blueGrey[600],
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        selectedIndex = 2;
                        setState(() {});
                      },
                      child: Expanded(
                        child: Column(children: <Widget>[
                          Expanded(
                            child: ImageIcon(
                              const AssetImage(
                                "assets/aset/User.png",
                              ),
                              color: selectedIndex == 2
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.blueGrey[600],
                              size: 40.0,
                            ),
                          ),
                          Text(
                            "My Profile",
                            style: TextStyle(
                              color: selectedIndex == 2
                                  ? const Color.fromRGBO(255, 175, 0, 50)
                                  : Colors.blueGrey[600],
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
