import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rahmat_smile/home.dart';
import 'package:rahmat_smile/login.dart';
import 'package:rahmat_smile/main.dart';

class HalamanUtama extends StatefulWidget {
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Halamanlogin()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bike_scooter,
              color: Colors.pink,
              size: 100.0,
            ),
            Text(
              'SMILE',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
