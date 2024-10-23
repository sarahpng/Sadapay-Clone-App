import 'package:flutter/material.dart';
import 'package:sadapay/views/main_view.dart';
import 'package:sadapay/views/more_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  Widget screen = const MainView();
  List<Widget> views = const [MainView(), MoreView()];
  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          screen = views[index];
          _selectedIndex = index;
          break;
        case 1:
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 26, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Payments",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                        const Spacer(),
                        const ListTile(
                          title: Text(
                            "Mobile top up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          subtitle: Text(
                            "Instatly top up your mobile.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: const Color.fromARGB(255, 184, 184, 184),
                        ),
                        const ListTile(
                          title: Text(
                            "Bills & Utilities",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          subtitle: Text(
                            "Pay for your utilities",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: const Color.fromARGB(255, 184, 184, 184),
                        ),
                        const ListTile(
                          title: Text(
                            "Money requests",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          subtitle: Text(
                            "Review pending money requests.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
          // _selectedIndex = 0;
          break;
        case 2:
          screen = views[index - 1];
          _selectedIndex = index;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).splashColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
