import 'package:flutter/material.dart';
import 'package:koora/fields.dart';
import 'package:koora/home.dart';
import 'package:koora/my_activities.dart';
import 'package:koora/players.dart';
import 'package:koora/profile.dart';

class Quickies extends StatefulWidget {
  const Quickies({super.key});

  @override
  State<Quickies> createState() => _QuickiesState();
}

class _QuickiesState extends State<Quickies> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    Widget selectedTab(String selected, {required bool isSelected}) {
      return Text(
        selected,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isSelected ? const Color(0xFFF1EED0) : const Color(0xFFBFBCA0),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF586A60).withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: const Color(0xff343835),
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Quickies',
              style: TextStyle(
                color: Color(0xFFF1EED0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset('assets/images/profileIcon.png'),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/search.png'),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 41,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFF415346),
                      Color(0xff343835),
                    ],
                  ),
                ),
                child: TabBar(
                  dividerColor: const Color(0xFF415346),
                  indicatorColor: const Color(0xFF599068),
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  tabs: [
                    Tab(
                      icon: selectedTab(
                        'Following',
                        isSelected: selectedIndex == 0,
                      ),
                    ),
                    Tab(
                      icon: selectedTab(
                        'For you',
                        isSelected: selectedIndex == 1,
                      ),
                    ),
                    Tab(
                      icon: selectedTab(
                        'Live',
                        isSelected: selectedIndex == 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IndexedStack(
              index: selectedIndex,
              children: [],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xff354038),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/inQuickies.png'),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyActivities(),
                    ),
                  );
                },
                icon: Image.asset('assets/images/myActivities.png'),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                icon: Image.asset('assets/images/home.png'),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Players(),
                    ),
                  );
                },
                icon: Image.asset('assets/images/players.png'),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Fields(),
                    ),
                  );
                },
                icon: Image.asset('assets/images/fields.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
