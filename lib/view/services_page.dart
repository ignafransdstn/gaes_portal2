import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gaes_portal/view/form/natura.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'form/e_groceries.dart';
import 'form/e_p2h.dart';
import 'form/e_stationery.dart';
import 'form/e_survey.dart';
import 'form/e_travel.dart';
import 'form/e_wr.dart';

class ServicesView extends GetView<ServicesView> {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(120, 41, 106, 247),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 41, 106, 247),
        title: Column(
          children: const [
            Text('GAES PORTAL'),
            Text(
              'SERVICES',
              style: TextStyle(fontSize: 15, color: Colors.white70),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(50),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const eSurvey(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.clipboard),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'E-SURVEY',
                        ),
                        const Text(
                          'E-SURVEY',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Natura(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.restaurant_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'NATURA',
                        ),
                        const Text(
                          'NATURA',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const eP2h(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.checklist_rounded),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'E-P2H',
                        ),
                        const Text(
                          'E-P2H',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const eTravel(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.car_sport),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'E-TRAVEL',
                        ),
                        const Text(
                          'E-TRAVEL',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const eStationery(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.pencil_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'E-STATIONERY',
                        ),
                        const Text(
                          'E-STATIONERY',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const eGroceries(),
                              ),
                            );
                          },
                          icon: const FaIcon(FontAwesomeIcons.bucket),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'E-GROCERIES',
                        ),
                        const Text(
                          'E-GROCERIES',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 41, 106, 247),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 41, 106, 247),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const eWr(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.construct_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'E-WORK REQUEST',
                        ),
                        const Text(
                          'E-WORK REQUEST',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
