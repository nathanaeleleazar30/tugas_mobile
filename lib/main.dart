import 'package:flutter/material.dart';
import 'widgets/tugas_pricing_card.dart'; // 1. Tambahkan import ini

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TugasPricingCard(),
    );
  }
}
