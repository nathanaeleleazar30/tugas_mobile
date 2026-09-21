import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Data statis untuk 3 card katalog
  final List<Map<String, String>> catalogs = const [
    {
      "name": "Tenda Dome Kapasitas 4 Orang",
      "price": "Rp 50.000 / hari",
      "desc":
          "Tenda double layer yang tahan air dan angin. Cocok untuk kegiatan camping di gunung atau pantai.",
    },
    {
      "name": "Carrier Osprey 65L",
      "price": "Rp 45.000 / hari",
      "desc":
          "Tas carrier ergonomis dengan sirkulasi udara di bagian punggung. Nyaman untuk pendakian panjang.",
    },
    {
      "name": "Sleeping Bag Polar",
      "price": "Rp 15.000 / hari",
      "desc":
          "Sleeping bag dengan lapisan dalam bahan polar yang tebal, menjaga suhu tubuh tetap hangat di cuaca ekstrem.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda Katalog')),
      body: ListView.builder(
        itemCount: catalogs.length,
        itemBuilder: (context, index) {
          final item = catalogs[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(item['name']!),
              subtitle: Text(item['price']!),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Implementasi Stack Navigation ke Screen 2
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      name: item['name']!,
                      price: item['price']!,
                      description: item['desc']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
