import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:mailc/main.dart';
import 'package:mailc/pages/assets_page.dart';
import 'package:mailc/pages/expenses_page.dart';
import 'package:mailc/pages/home_page.dart';
import 'package:mailc/pages/rigsatchat_page.dart';
import 'package:mailc/pages/settings_page.dart';
import 'package:mailc/pages/support_page.dart';
import 'package:mailc/pages/tickets_page.dart';
import 'package:mailc/pages/timesheets_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Homepage',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'TimeSheets',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
                TimeSheets(title: 'RigSat TimeSheets'),

      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Expenses',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          ExpensesPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Assets',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          AssetsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Tickets',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          TicketsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'RigSatChat',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          RigSatChatPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Support',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          SupportPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ), 
          selectedStyle: TextStyle(),
          ),
          SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color.fromARGB(149, 242, 1, 1),
      // backgroundColorMenu: Color.fromARGB(255, 150, 11, 41),
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
