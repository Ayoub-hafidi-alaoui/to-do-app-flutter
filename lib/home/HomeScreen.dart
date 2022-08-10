import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/home/settings/settings_tab.dart';
import 'package:task_management/home/task_list/task_list_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String ROUTE_NAME = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("todo list app"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex ,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(color: Colors.white, width: 7)
        ),
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
      body: tabs[selectedIndex],

    );
  }

  var tabs = [TaskListTab(), SettingsTab()];
}