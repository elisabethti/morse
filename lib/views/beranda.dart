import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';
import 'package:rse_test_app/views/Beranda/beranda_guest.dart';

import '../routes.dart';
import 'Janji/all_janji.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const BerandaGuestPage(),
    const AllJanji(showBackButton: false),
    const Text('Page Notifikasi'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: customRoutes,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 20.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home-outlined.png',
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              activeIcon: Image.asset('assets/icons/home-filled.png',
                  width: MediaQuery.of(context).size.width * 0.05),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/calendar-outlined.png',
                  width: MediaQuery.of(context).size.width * 0.05),
              activeIcon: Image.asset('assets/icons/calendar-filled.png',
                  width: MediaQuery.of(context).size.width * 0.05),
              label: 'Janji',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/alert-outlined.png',
                  width: MediaQuery.of(context).size.width * 0.05),
              activeIcon: Image.asset('assets/icons/alert-filled.png',
                  width: MediaQuery.of(context).size.width * 0.05),
              label: 'Notifikasi',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: darkTextColor,
          selectedLabelStyle: titleBold12,
          unselectedLabelStyle: textRegular12,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
