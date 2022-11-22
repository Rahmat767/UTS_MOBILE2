import 'dart:html';
import 'package:flutter/material.dart';
import 'package:rahmat_smile/home.dart';
import 'package:rahmat_smile/register.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Login",
    home: Halamanlogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class Halamanlogin extends StatefulWidget {
  const Halamanlogin({super.key});

  @override
  State<Halamanlogin> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<Halamanlogin> {
  bool visibilityPass = false;

  final String MyUser = 'Admin';
  final String MyPass = '12345';

  TextEditingController vUser = TextEditingController();
  TextEditingController vPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 219, 246, 246),
              Color.fromARGB(255, 237, 148, 80)
            ])),
        child: Card(
          elevation: 10,
          shadowColor: Color.fromARGB(255, 49, 43, 233),
          child: Column(children: [
            Container(
              width: 100,
              padding: EdgeInsets.all(10),
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profil.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: vUser,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'Username',
                        hintText: 'Inputkan Username Anda',
                        prefixIcon: Icon(Icons.person),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: vPass,
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          labelText: 'Password',
                          hintText: 'Inputkan Password Anda',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibilityPass = !visibilityPass;
                              });
                            },
                            icon: visibilityPass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      ceklogin(context);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }),
                    child: Text("LOGIN"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Halamanregister()));
                    }),
                    child: Text("REGISTER"),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void ceklogin(BuildContext context) {
    // final String MyUser = 'Admin';
    //final String MyPass = '12345';
    if (vUser.text == MyUser && vPass.text == MyPass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Halamanlogin(),
          ));
    }
  }
}
