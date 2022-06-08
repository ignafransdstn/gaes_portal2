import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                              'https://forms.office.com/r/HTP61JJ45a'),
                          icon: Icon(Ionicons.clipboard),
                          iconSize: 80,
                          color: Colors.white,
                          tooltip: 'E-Survey',
                        ),
                        Text(
                          'E-Survey',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
