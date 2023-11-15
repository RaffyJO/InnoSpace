import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class MenuuserView extends StatefulWidget {
  const MenuuserView({Key? key}) : super(key: key);

  Widget build(context, MenuuserController controller) {
    String textbookorskip;
    String price;
    if (controller.total == 0) {
      textbookorskip = "Skip";
      price = "0";
    } else {
      textbookorskip = "Next";
      price = "100000";
    }
    final List<Map<String, String>> products = [
      {
        "photo":
            "https://awsimages.detik.net.id/community/media/visual/2021/04/22/5-makanan-enak-dari-indonesia-dan-malaysia-yang-terkenal-enak-5.jpeg?w=600&q=90",
        "product_name": "Nasi Goreng",
        "price": "15000"
      },
      {
        "photo":
            "https://www.indonesia.travel/content/dam/indtravelrevamp/en/trip-ideas/the-ultimate-guide-to-must-try-indonesian-food/bakso.jpg",
        "product_name": "Bakso",
        "price": "12000"
      },
      {
        "photo":
            "https://rebornprojectmedia.com/wp-content/uploads/2019/03/resep-martabak-manis.jpg",
        "product_name": "Terang Bulan",
        "price": "19000"
      },
      {
        "photo":
            "https://paragram.id/upload/media/entries/2022-03/22/34695-1-812ff7af7dbf599c0a5b41b6a6b2c374.jpg",
        "product_name": "sate Ayam",
        "price": "25000"
      },
      {
        "photo":
            "https://i0.wp.com/www.acozykitchen.com/wp-content/uploads/2017/04/IcedMatchaLatte-1.jpg?w=720&ssl=1",
        "product_name": "Matcha",
        "price": "12000"
      },
      {
        "photo":
            "https://storyblok-cdn.ef.com/f/60990/960x1280/6ecfae7124/kopi-susu.jpg",
        "product_name": "Ice Coffee",
        "price": "14000"
      },
    ];
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(194, 255, 174, 0),
        title: const Text("Menuuser"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.0 / 1.4,
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: products.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final item = products[index];
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              item["photo"] ??
                                  "https://awsimages.detik.net.id/community/media/visual/2021/04/22/5-makanan-enak-dari-indonesia-dan-malaysia-yang-terkenal-enak-5.jpeg?w=600&q=90",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              6.0,
                            ),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            Positioned(
                              right: 6.0,
                              top: 8.0,
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      item["product_name"]!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      item["price"]!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: controller.kurang,
                            child: const Icon(
                              Icons.exposure_minus_1,
                              size: 35,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            controller.total.toString(),
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: controller.tambah,
                            child: const Icon(
                              Icons.add,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white, // Warna latar belakang
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Warna bayangan
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3), // Atur offset untuk bayangan ke atas
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "IDR $price",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: const Color.fromARGB(194, 255, 174, 0),
                fixedSize: const Size(190, 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentView(),
                  ),
                );
              },
              child: Text(textbookorskip),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MenuuserView> createState() => MenuuserController();
}
