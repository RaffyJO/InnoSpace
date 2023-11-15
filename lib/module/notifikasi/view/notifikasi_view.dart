import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

import '../controller/notifikasi_controller.dart';

class NotifikasiView extends StatefulWidget {
  const NotifikasiView({Key? key}) : super(key: key);

  Widget build(context, NotifikasiController controller) {
    final List<Map<String, String>> notifikasi = [
      {
        "name": "Bagaimana Harimu?",
        "deskripsi": "Ada voucher cashback buat kamu nih"
      },
      {
        "name": "Bagaimana Kesan Anda di Kopi Siipp?",
        "deskripsi":
            "Mohon Maaf atas ketidaknyamanan, Maintance dilakukan Pada tanggal 23 Desember 2023"
      },
      {
        "name": "Promo Khusus Pengguna Baru",
        "deskripsi":
            "Kepada Pengguna baru, Pasti Diskon 50% jika kamu memesan sekarang"
      },
      {
        "name": "Terimakasih Sudah Mendaftar InnoSpace",
        "deskripsi": "Untuk pengguna baru dimohon untuk melengkapi Data diri"
      },
      {"name": "Minuman", "deskripsi": "local_drink"},
      {"name": "Coffee", "deskripsi": "coffee"},
    ];
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(194, 255, 174, 0),
        title: const Text("Notifikasi"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: 4, // Ganti dengan jumlah notifikasi yang kamu miliki
        itemBuilder: (BuildContext context, int index) {
          final notif = notifikasi[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(194, 255, 174, 0),
                child: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(194, 255, 255, 255),
                ),
              ),
              title: Text(
                notif["name"] as String,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              subtitle: index == 1
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (i) {
                        return IconButton(
                          onPressed: () {
                            print('User rated with ${i + 1} stars');
                          },
                          icon: Icon(
                            Icons.star,
                            size: 30,
                            color: i < 5
                                ? const Color.fromARGB(255, 167, 167, 167)
                                : Colors.grey,
                          ),
                        );
                      }),
                    )
                  : Text(notif["deskripsi"] as String),
              trailing: index == 1 ? null : const Icon(Icons.arrow_forward),
              onTap: () {
                print('Notification $index clicked');
              },
            ),
          );
        },
      ),
    );
  }

  @override
  State<NotifikasiView> createState() => NotifikasiController();
}
