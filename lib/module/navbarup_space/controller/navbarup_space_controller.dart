import 'package:flutter/material.dart';
import 'package:innospace/core.dart';
import 'package:innospace/shared/widget/form/date_picker/datepicker.dart';

import '../view/navbarup_space_view.dart';

class NavbarupSpaceController extends State<NavbarupSpaceView> {
  static late NavbarupSpaceController instance;
  late NavbarupSpaceView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void popup() async {
    String? selectedLocation = '';
    double screenWidth = MediaQuery.of(context).size.width;

    selectedLocation = await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Pilih Lokasi'),
              const SizedBox(
                height: 13,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16)),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "         Public Gold Marketing Sdn",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // Tambahkan logika untuk aksi pencarian
                        print('Search button pressed');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: screenWidth * 0.70,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            "https://emas2u.com/wp-content/uploads/2019/02/public-gold-sunway-map.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Tambahkan lokasi lainnya sesuai kebutuhan
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(55, 0, 55, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 170, 47, 47),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Batal"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(194, 255, 174, 0),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Pilih"),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );

    if (selectedLocation != null) {
      print('Lokasi yang dipilih: $selectedLocation');
      // Lakukan sesuatu dengan lokasi yang dipilih
    }
  }

  void datePicker() {
    DateTime date;
    QDatePicker(
        label: "Date",
        onChanged: (value) {
          date = value;
        });
  }
}
