import 'package:flutter/material.dart';
import 'package:gaes_portal/pages/home_page.dart';
import 'package:gaes_portal/pages/transport_page.dart';
import 'package:gaes_portal/pages/office_affairs.dart';
import 'package:gaes_portal/pages/dashboard.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:ionicons/ionicons.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:gaes_portal/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GAES Portal',
      home: SplashScreen(),
      routes: {
        '/home': (context) => SplashScreen(),
        // '/transport': (context) => TransportPage(),
        // '/office_affairs': (context) => OfficeAffairsPage(),
      },
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => GaesPortalMainMenu(),
      //   // GaesPortalMainMenu.id: (context) => GaesPortalMainMenu(),
      // },
    );
  }
}

class GaesPortalMainMenu extends StatefulWidget {
  const GaesPortalMainMenu({Key? key}) : super(key: key);

  @override
  _GaesPortalMainMenuState createState() => _GaesPortalMainMenuState();
}

class _GaesPortalMainMenuState extends State<GaesPortalMainMenu> {
  int index = 0;

  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: bodySection(),
      bottomNavigationBar: gaesPortalMainMenu(),
    );
  }

  bodySection() {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return TranportPage();
      case 2:
        return OfficePage();
      default:
        return Dashboard();
    }
  }

  gaesPortalMainMenu() {
    return BottomNavyBar(
      selectedIndex: index,
      showElevation: true,
      onItemSelected: (index) => setState(() => this.index = index),
      items: [
        BottomNavyBarItem(
          icon: Icon(Ionicons.clipboard_outline),
          title: Text("E-Survey"),
          activeColor: Color.fromARGB(255, 53, 107, 223),
          textAlign: TextAlign.justify
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.commute_sharp),
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Transportation"),
          ),
          activeColor: Color.fromARGB(255, 53, 107, 223),
          textAlign: TextAlign.justify
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.local_grocery_store_rounded),
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Office Affairs"),
          ),
          activeColor: Color.fromARGB(255, 53, 107, 223),
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.dashboard_rounded),
          title: Text("Dashboard"),
          activeColor: Color.fromARGB(255, 53, 107, 223),

        ),
      ],
    );
  }
}
