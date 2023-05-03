import 'package:flutter/material.dart';
import 'package:gaes_portal/view/dashboard_page.dart';
import 'package:gaes_portal/view/services_page.dart';
import 'package:gaes_portal/view/splash_page.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:permission_handler/permission_handler.dart';

import 'controller/screen_routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Permission.camera.request();
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
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      backgroundColor: const Color.fromARGB(255, 41, 106, 247),
      onTap: (index) => setState(() => this.index = index),
    );
  }
}
