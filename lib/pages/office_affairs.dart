import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OfficePage extends StatefulWidget {
  const OfficePage({Key? key}) : super(key: key);

  @override
  State<OfficePage> createState() => _OfficePageState();
}

class _OfficePageState extends State<OfficePage> {
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
      body: Container(
        decoration: BoxDecoration(),
        child: Column(children: [
          const SizedBox(height: 20),
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 115, right: 20),
                child: Column(
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
                        splashColor: Colors.blue,
                        onTap: () {},
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () => launch(
                                    'https://forms.office.com/r/5UvyRkpfuJ'),
                                icon: Icon(Ionicons.pencil_outline),
                                iconSize: 80,
                                color: Colors.white,
                                tooltip: 'E-STATIONERY',
                              ),
                              Text(
                                'E-STATIONERY',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(height: 20),
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
                                    'https://forms.office.com/r/4jspJwqm3U'),
                               icon: const FaIcon(FontAwesomeIcons.bucket),
                                iconSize: 80,
                                color: Colors.white,
                                tooltip: 'E-GROCERIES',
                              ),
                              Text(
                                'E-GROCERIES',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(height: 20),
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
                                    'https://forms.office.com/r/u7QRT0jV9k'),
                                icon: const FaIcon(FontAwesomeIcons.gears),
                                iconSize: 80,
                                color: Colors.white,
                                tooltip: 'E-WORK REQUESTS',
                              ),
                              Text(
                                'E-WORK REQUESTS',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
