import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:ionicons/ionicons.dart';

class TranportPage extends StatefulWidget {
  const TranportPage({Key? key}) : super(key: key);

  @override
  State<TranportPage> createState() => _TranportPageState();
}

class _TranportPageState extends State<TranportPage> {
  @override
  Widget build(BuildContext context) {
    // const String _e_survey = 'https://forms.office.com/r/Ze8F7ySkfs';
    return Scaffold(
        backgroundColor: Color.fromARGB(120, 41, 106, 247),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Color.fromARGB(255, 41, 106, 247),
          title: Column(
            children: [
              Text("GAES Portal"),
              Text("General Affair E-System",
                  style: TextStyle(fontSize: 15, color: Colors.white70))
            ],
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.30,
                  decoration: new BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => launch(
                              'https://forms.office.com/r/Ze8F7ySkfs'),
                          icon: Icon(Icons.checklist_rounded),
                          iconSize: 80,
                          color: Colors.white,
                          tooltip: 'E-P2H',
                        ),
                        Text(
                          'E-P2H',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
                  SizedBox(width: 20),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: new BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: new BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => launch(
                                  'https://forms.office.com/r/bs4vncf540'),
                              icon: Icon(Ionicons.car_sport),
                              iconSize: 80,
                              color: Colors.white,
                              tooltip: 'E-Travel',
                            ),
                            Text(
                              'E-Travel',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
            ],
          ),
        ));
  }
}
