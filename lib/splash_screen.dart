// ignore_for_file: unnecessary_string_escapes

// import 'dart:async';
// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gaes_portal/main.dart';
// import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // body: Column(
        //   children: <Widget>[
        //     Image(image: AssetImage('assets/images/logoit.jpeg'))
        //   ],
        // ),
        // body: Column(children: <Widget>[
        //   Image.network('https://www.petanikode.com/img/flutter/flutter.png'),
        //   Text(
        //     'Belajar Flutter untuk Pemula',
        //     style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
        //   ),
        //   Text('oleh Petani Kode')
        // ]) //this way make me can show picture in apps
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              // child: new Container(
              //   // padding: EdgeInsets.all(10),
              //   //  child: new Image.asset('assets\images\logoit.jpg', fit: BoxFit.cover,),
              // )
                child: Image.asset(
                  'assets/images/Picture1.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GaesPortalMainMenu()));
              },
              child: const Text("Open Menu"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            )
            // Text(
            //   'GAES Portal',
            //   style: TextStyle(
            //     fontSize: 30,
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ],
        ),
        );
  }
}
