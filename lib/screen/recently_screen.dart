import 'package:flutter/material.dart';

class Recently_screen extends StatefulWidget {
  const Recently_screen({Key key}) : super(key: key);
  _Recently_screenState createState() => _Recently_screenState();
}

class _Recently_screenState extends State<Recently_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[700],
        title: Text(
          "Riwayat Pesanan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("Ini Adalah Halaman Riwayat Pesanan"),
      ),
    );
  }
}
