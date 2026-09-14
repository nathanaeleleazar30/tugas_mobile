import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas #4 Mobile Dev',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  final List<Map<String, String>> catalogs = const [
    {"name": "Katalog 1", "price": "Rp 150.000", "desc": "Burger."},
    {"name": "Katalog 2", "price": "Rp 250.000", "desc": "Sandwich."},
    {"name": "Katalog 3", "price": "Rp 350.000", "desc": "Paket Ayam."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda / Katalog')),
      body: ListView.builder(
        itemCount: catalogs.length,
        itemBuilder: (context, index) {
          final item = catalogs[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              title: Text(
                item["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Klik untuk melihat detail"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2(item: item)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// Screen 2: Detail Katalog (Wajib StatefulWidget)
class Screen2 extends StatefulWidget {
  final Map<String, String> item;

  const Screen2({super.key, required this.item});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Katalog')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    "Kembali",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            Text(
              widget.item["name"]!,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              widget.item["price"]!,
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFDFD96),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                widget.item["desc"]!,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                label: Text(
                  isFavorite ? "Disukai" : "Suka",
                  style: const TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
