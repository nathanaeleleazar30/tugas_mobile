import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;
  final String price;
  final String description;

  const DetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // Variabel state untuk menangkap event interaktif pada tombol
  bool isBookmarked = false;

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Katalog'),
        // Icon back eksplisit untuk kembali ke Screen 1
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Tata letak vertikal menggunakan Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              widget.price,
              style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),
            // Container dengan latar belakang warna pastel dan padding
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50, // Warna pastel
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
            const Spacer(),
            // Tombol dengan perubahan state interaktif
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: toggleBookmark,
                icon: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  color: isBookmarked ? Colors.teal : Colors.grey,
                ),
                label: Text(
                  isBookmarked ? 'Tersimpan di Keranjang' : 'Simpan Barang',
                  style: TextStyle(
                    color: isBookmarked ? Colors.teal : Colors.black87,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isBookmarked
                      ? Colors.teal.shade50
                      : Colors.white,
                  side: BorderSide(
                    color: isBookmarked ? Colors.teal : Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
