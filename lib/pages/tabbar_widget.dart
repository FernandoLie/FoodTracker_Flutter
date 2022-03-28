import 'package:flutter/material.dart';
import 'package:food_tracker/components/dropdown_diary.dart';
import 'package:food_tracker/constanta.dart';
import 'package:food_tracker/pages/diary.dart';
import 'package:food_tracker/pages/home.dart';
import 'package:food_tracker/pages/reports.dart';
import 'package:food_tracker/pages/side_bar.dart';
import 'package:food_tracker/pages/weight.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarComponent extends StatefulWidget {
  const TabbarComponent({Key? key}) : super(key: key);

  @override
  State<TabbarComponent> createState() => _TabbarComponentState();
}

class _TabbarComponentState extends State<TabbarComponent> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Diary(),
    Reports(),
    Weight(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: greendefault(),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            _selectedIndex == 3
                ? IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                : Container()
          ],
          title: _selectedIndex == 0
              ? Row(
                  children: [
                    const SizedBox(
                      width: 45,
                    ),
                    Text(
                      'FoodTracker',
                      style: TextStyle(
                          fontFamily: GoogleFonts.lilitaOne().fontFamily,
                          color: Colors.black,
                          fontSize: 28),
                    ),
                  ],
                )
              : _selectedIndex == 1
                  ? const DropdownDiary()
                  : _selectedIndex == 2
                      ? Text(
                          'Reports',
                          style: Theme.of(context).textTheme.headline5,
                        )
                      : Center(
                          child: Text(
                            'Current Weight',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        )),
      drawer: const SideBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_weight),
            label: 'Weight',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: greendefault(),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
