import 'package:flutter/material.dart';

class BeritaPanel extends StatelessWidget {
  const BeritaPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Terkini'),
        elevation: 0,
      ),
      body: Text('Berita'),
    );
  }
}