import 'package:flutter/material.dart';
import 'package:uas/screen/list_car.dart';

class DetailMobil extends StatefulWidget {
  const DetailMobil({Key key}) : super(key: key);
  _DetailMobilState createState() => _DetailMobilState();
}

class _DetailMobilState extends State<DetailMobil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => ListCar(),
            ));
          },
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: Text(
          "Detail Mobil",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bgbumi.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
