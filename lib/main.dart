import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter quiz',
      home: Scaffold(
        // Warna latar belakang di luar kotak putih (mirip dengan tepian gambar)
        backgroundColor: const Color(0xFFF9F5F2), 
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              // Styling untuk kotak putih utama
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  color: Colors.grey.shade200, // Border yang sangat tipis
                  width: 1.5,
                ),
              ),
              // Widget GridView untuk layout 3x3
              child: const GridPlaceholderWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

class GridPlaceholderWidget extends StatelessWidget {
  const GridPlaceholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Agar GridView menyesuaikan tinggi kontennya
      physics: const NeverScrollableScrollPhysics(), // Mematikan scroll karena ini hanya UI statis
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Jumlah kolom (3 menyamping)
        crossAxisSpacing: 32.0, // Jarak horizontal antar kotak
        mainAxisSpacing: 32.0, // Jarak vertikal antar kotak
        childAspectRatio: 3.0, // Rasio lebar:tinggi kotak (sesuaikan agar terlihat panjang seperti di gambar)
      ),
      itemCount: 9, // Total item (3 baris x 3 kolom = 9)
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            // Warna krem/merah muda pucat untuk kotak di dalam
            color: const Color(0xFFEBE0DA), 
            borderRadius: BorderRadius.circular(12.0),
          ),
        );
      },
    );
  }
}