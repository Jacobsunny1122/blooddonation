import 'package:flutter/material.dart';

class AboutCoder extends StatefulWidget {
  const AboutCoder({super.key});

  @override
  State<AboutCoder> createState() => _AboutCoderState();
}

class _AboutCoderState extends State<AboutCoder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        title: Text(
          "BloodUp",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
          child: Text(
        "This application is made by JACOB SUNNY",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w900, wordSpacing: 2),
      )),
    );
  }
}
