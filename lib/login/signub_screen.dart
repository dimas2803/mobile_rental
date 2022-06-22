import 'package:flutter/material.dart';
import 'package:uas/login/login_screen.dart';

class SignupScreen extends StatefulWidget {
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  TextEditingController userConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Text(''),
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
                controller: userNameController,
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
                controller: userEmailController,
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
                controller: userPasswordController,
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
                controller: userConfirmPasswordController,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sudah Punya Akun?'),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  "Login disini",
                ),
              ),
            ],
          ),
        ])));
  }
}
