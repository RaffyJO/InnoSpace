import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class InnoworkView extends StatefulWidget {
  const InnoworkView({Key? key}) : super(key: key);

  Widget build(context, InnoworkController controller) {
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
                                "https://lh3.googleusercontent.com/p/AF1QipNHP4Ng0tqkhIB7dpsm8RsU6OGXkkl_MI0LCqFW=s1360-w1360-h1020",
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
                                "Ruang Perintis",
                                style: TextStyle(
                                  fontSize: screenWidth *
                                      0.050, // Adjust the font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Recently Book",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.01),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jl. Candi Sawentar No.209, Mojolangu,",
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
                                  const Text("2.9 km"),
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
                            builder: (context) => const InnoworkDetailView(),
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
                                "https://lh3.googleusercontent.com/p/AF1QipOoHgH2yTPYOsRwtrNTvxec9u01zfAKII--uoZN=s1360-w1360-h1020",
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
                                "Seikophi",
                                style: TextStyle(
                                  fontSize: screenWidth *
                                      0.06, // Adjust the font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Recently Book",
                                    style: TextStyle(
                                      fontSize: screenWidth *
                                          0.03, // Adjust the font size
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.01),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jl. Ikan Tombro Jl. Sudimoro, Mojolangu, ",
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
                                  const Text("0.2 km"),
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
                            builder: (context) => const InnoworkDetailView(),
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
  State<InnoworkView> createState() => InnoworkController();
}
