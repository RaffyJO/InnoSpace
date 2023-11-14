import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import '../controller/booking_information_controller.dart';

class BookingInformationView extends StatefulWidget {
  const BookingInformationView({Key? key}) : super(key: key);

  Widget build(context, BookingInformationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Text(
          "Booking List",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: const [
          ImageIcon(
            AssetImage(
              "assets/aset/History.png",
            ),
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }

  @override
  State<BookingInformationView> createState() => BookingInformationController();
}
