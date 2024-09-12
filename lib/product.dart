import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths
    final List<String> imagePaths = [
      'assets/images/foto_1.jpeg',
      'assets/images/contoh_1.jpeg',
      // Add more image paths as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 10,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(imagePaths[index % imagePaths.length]),
            ),
          );
        },
      ),
    );
  }
}
