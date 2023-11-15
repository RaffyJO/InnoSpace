import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class InnocafeView extends StatefulWidget {
  const InnocafeView({Key? key}) : super(key: key);

  Widget build(context, InnocafeController controller) {
    controller.view = this;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: screenWidth * 0.75, // 75% of the screen width
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                "https://lh3.googleusercontent.com/p/AF1QipPy2oI7s7s6i3WQa3TNCNKlCtPtZp_76vRzlM-G=s1360-w1360-h1020",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Piskip",
                                style: TextStyle(
                                  fontSize: screenWidth *
                                      0.06, // Adjust the font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Column(
                              //   children: [
                              //     Text(
                              //       "Recently Book",
                              //       style: TextStyle(
                              //         fontSize: screenWidth *
                              //             0.03, // Adjust the font size
                              //       ),
                              //     ),
                              //     SizedBox(height: screenWidth * 0.01),
                              //   ],
                              // ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jl. Pisang Kipas No.6, Jatimulyo, ",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                  Text(
                                    "Kec. Lowokwaru, Kota Malang, Jawa Timur 65141",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  SizedBox(height: screenWidth * 0.01),
                                  const Text("0.7 km"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: const Color.fromARGB(194, 255, 174, 0),
                        fixedSize: Size(screenWidth * 0.8,
                            screenWidth * 0.1), // Adjust the button size
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InnocafeDetailView(),
                          ),
                        );
                      },
                      child: Text(
                        "See More".toUpperCase(),
                        style: TextStyle(
                            fontSize:
                                screenWidth * 0.04), // Adjust the font size
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: screenWidth * 0.75, // 75% of the screen width
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                "https://cdns.klimg.com/merdeka.com/i/w/news/2022/05/07/1433082/content_images/670x335/20220507200741-12-nakoa-cafe-001-tantri-setyorini.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nakoa Cafe Suhat",
                                style: TextStyle(
                                  fontSize: screenWidth *
                                      0.06, // Adjust the font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Column(
                              //   children: [
                              //     Text(
                              //       "Recently Book",
                              //       style: TextStyle(
                              //         fontSize: screenWidth *
                              //             0.03, // Adjust the font size
                              //       ),
                              //     ),
                              //     SizedBox(height: screenWidth * 0.01),
                              //   ],
                              // ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jl. Puncak Borobudur G502, Griya Shanta Blk.J",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                  Text(
                                    "No.216, Mojolangu, Kec. Lowokwaru, ",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                  Text(
                                    "Kota Malang, Jawa Timur",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  SizedBox(height: screenWidth * 0.01),
                                  const Text("2.1 km"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: const Color.fromARGB(194, 255, 174, 0),
                        fixedSize: Size(screenWidth * 0.8,
                            screenWidth * 0.1), // Adjust the button size
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InnocafeDetailView(),
                          ),
                        );
                      },
                      child: Text(
                        "See More".toUpperCase(),
                        style: TextStyle(
                            fontSize:
                                screenWidth * 0.04), // Adjust the font size
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.02,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<InnocafeView> createState() => InnocafeController();
}
