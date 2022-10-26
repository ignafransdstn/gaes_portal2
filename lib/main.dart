import 'package:flutter/material.dart';
import 'package:gaes_portal/view/dashboard_page.dart';
import 'package:gaes_portal/view/services_page.dart';
import 'package:gaes_portal/view/splash_page.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'controller/screen_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GAES Portal',
      getPages: AppPage.pages,
      home: const SplashView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodySection(),
      bottomNavigationBar: mainMenu(),
    );
  }

  bodySection() {
    switch (index) {
      case 0:
        return const ServicesView();
      default:
        return const DashboardView();
    }
  }

  mainMenu() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Ionicons.grid_outline),
          label: "SERVICES",
          backgroundColor: Color.fromARGB(255, 41, 106, 247)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_rounded),
          label: "DASHBOARD",
          backgroundColor: Color.fromARGB(255, 13, 42, 102)
        ),
      ],
      currentIndex: index,
      onTap: (index) => setState(() => this.index = index),
    );
    // return BottomNavyBar(
    //   selectedIndex: index,
    //   showElevation: true,
    //   items: [
    //     BottomNavyBarItem(
    //       icon: const Icon(Ionicons.grid_outline),
    //       title: const FittedBox(
    //         fit: BoxFit.fitWidth,
    //         child: Text('SERVICES'),
    //       ),
    //       activeColor: const Color.fromARGB(255, 53, 107, 223),
    //       textAlign: TextAlign.justify,
    //     ),
    //     BottomNavyBarItem(
    //       icon: const Icon(Icons.dashboard_rounded),
    //       title: const FittedBox(
    //         fit: BoxFit.fitWidth,
    //         child: Text("DASHBOARD"),
    //       ),
    //       activeColor: const Color.fromARGB(255, 53, 107, 223),
    //       textAlign: TextAlign.justify,
    //     ),
    //   ],
    //   onItemSelected: (index) => setState(() => this.index = index),
    // );
  }
}
