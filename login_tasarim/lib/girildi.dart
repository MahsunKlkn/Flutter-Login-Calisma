import 'package:flutter/material.dart';

class Girildi extends StatefulWidget {
  final String kullanici_Adi;
  final int kullanici_Sifre;
  
  const Girildi({super.key, required this.kullanici_Adi, required this.kullanici_Sifre});

  @override
  State<Girildi> createState() => _GirildiState();
}

class _GirildiState extends State<Girildi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hoşgeldin ${widget.kullanici_Adi}")),
    );
  }
}