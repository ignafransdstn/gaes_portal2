import 'package:flutter/material.dart';
import 'package:gaes_portal/view/dashboard/p2h.dart';
import 'package:gaes_portal/view/dashboard/sarana_status.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'dashboard/mess.dart';

class DashboardView extends GetView<DashboardView> {
  const DashboardView({Key? key}) : super(key: key);

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
              'DASHBOARD',
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
                                builder: (context) => const Mess(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.home_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'MESS',
                        ),
                        const Text(
                          'MESS',
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
                                builder: (context) => const SaranaStatus(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.car_outline),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'TRANSPORTATION STATUS',
                        ),
                        Column(
                          children: const [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'TRANSPORT STATUS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
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
                                builder: (context) => const P2hDashboard(),
                              ),
                            );
                          },
                          icon: const Icon(Ionicons.list),
                          iconSize: 50,
                          color: Colors.white,
                          tooltip: 'P2H STATUS',
                        ),
                        Column(
                          children: const [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'P2H STATUS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
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
