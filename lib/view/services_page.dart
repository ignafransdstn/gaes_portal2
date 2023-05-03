import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gaes_portal/view/form/e_fuellvfuel.dart';
import 'package:gaes_portal/view/form/e_lv_status.dart';
import 'package:gaes_portal/view/form/natura.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'form/e_ftw.dart';
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
                          tooltip: 'SURVEY',
                        ),
                        const Text(
                          'SURVEY',
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
                          tooltip: 'MEALS',
                        ),
                        const Text(
                          'MEALS NATURA',
                          style: TextStyle(
                            fontSize: 12,
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
                          tooltip: 'TRAVEL',
                        ),
                        const Text(
                          'TRAVEL',
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
                          tooltip: 'STATIONERY',
                        ),
                        const Text(
                          'STATIONERY',
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
                                builder: (context) => const eP2h(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.checklist_rounded),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'P2H',
                        ),
                        const Text(
                          'P2H',
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
                                builder: (context) => const eLvStatus(),
                              ),
                            );
                          },
                          icon: const Icon(FontAwesomeIcons.truckMonster),
                          iconSize: 40,
                          color: Colors.white,
                          tooltip: "STATUS LV",
                        ),
                        const Text(
                          'LV STATUS',
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
                                builder: (context) => const eFtw(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.body_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'FIT TO WORK',
                        ),
                        const Text(
                          'FIT TO WORK',
                          style: TextStyle(
                            fontSize: 13,
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
                                builder: (context) => const eFuelLv(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.water_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'FUEL CONSUMTION RECORD',
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'FUEL RECORD',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
                          tooltip: 'GROCERIES',
                        ),
                        const Text(
                          'GROCERIES',
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
                          tooltip: 'WORK REQUEST',
                        ),
                        const Text(
                          'WORK REQUEST',
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
