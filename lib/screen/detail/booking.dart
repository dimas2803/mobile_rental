import 'package:flutter/material.dart';
import 'package:uas/screen/list_car.dart';

class Boking extends StatefulWidget {
  const Boking({Key key}) : super(key: key);
  _BokingState createState() => _BokingState();
}

class _DetailMobilState extends State<> {
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
      body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 20),
          Text("SignUp", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Text(
            'Buat Akun Anda Untuk Memulai',
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.person_outline, size: 20),
                  // labelText: "Username",
                  hintText: "Masukan Username",
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.email_outlined, size: 20),
                  // labelText: "Username",
                  hintText: "Email",
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.lock_open_outlined, size: 20),
                  // labelText: "Username",
                  hintText: "Password",
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.lock, size: 20),
                  // labelText: "Username",
                  hintText: "Konfirm Password",
                )),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text('REGISTER'),
            ),
          ),

        ]))
    );
  }
}

