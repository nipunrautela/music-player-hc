import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "MusicBox",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w900,
              ),
            ),
            titleTextStyle: const TextStyle(color: Colors.black),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                color: Colors.black,
                onPressed: () {},
              ),
              const Padding(padding: EdgeInsets.all(5.0))
            ],
            backgroundColor: Colors.white,
          ),
          body: PageView(
            controller: pageController,
            children: [
              Container(color: Colors.white),
              Container(color: Colors.black),
              Container(color: Colors.grey),
              Container(color: Colors.green),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "something",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "something",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "something",
                icon: Icon(Icons.list_alt),
              ),
              BottomNavigationBarItem(
                label: "something",
                icon: Icon(Icons.person),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: onTapped,
          ),
        ),
      );
}
