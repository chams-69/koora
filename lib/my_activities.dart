import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:koora/fields.dart';
import 'package:koora/home.dart';
import 'package:koora/players.dart';
import 'package:koora/profile.dart';
import 'package:koora/qiuckies.dart';

class MyActivities extends StatefulWidget {
  const MyActivities({super.key});

  @override
  State<MyActivities> createState() => _MyActivitiesState();
}

class _MyActivitiesState extends State<MyActivities> {
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

    double radius = screenWidth < 500 ? width(15) : 17.44186046511628;
    double sizedBoxWidth = screenWidth < 500 ? width(60) : 69.76744186046512;
    double activeAdd = screenWidth < 500 ? width(50) : 48.13953488372093;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xff343835),
        floatingActionButton: SizedBox(
          width: sizedBoxWidth,
          height: sizedBoxWidth,
          child: SpeedDial(
            backgroundColor: Colors.transparent,
            overlayColor: Colors.black,
            overlayOpacity: 0.4,
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            children: [
              SpeedDialChild(
                labelWidget: Container(
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffF1EED0).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(width(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width(14)),
                    child: Text(
                      'new Post',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width(15),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              SpeedDialChild(
                labelWidget: Container(
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffF1EED0).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(width(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width(14)),
                    child: Text(
                      'Create Game',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width(15),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              SpeedDialChild(
                labelWidget: Container(
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffF1EED0).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(width(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width(14)),
                    child: Text(
                      'Create your Team',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width(15),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              SpeedDialChild(
                labelWidget: Container(
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: const Color(0xffF1EED0).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(width(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width(14)),
                    child: Text(
                      'Book a Field',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width(15),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
            activeChild: Image.asset(
              'assets/images/add.png',
              width: activeAdd,
              height: activeAdd,
            ),
            child: Image.asset(
              'assets/images/add.png',
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff343835),
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'My Activities',
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
        body: SingleChildScrollView(
          child: Column(
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
                    // indicatorSize: TabBarIndicatorSize.tab,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    tabs: [
                      Tab(
                        icon: selectedTab(
                          'My Games',
                          isSelected: selectedIndex == 0,
                        ),
                      ),
                      Tab(
                        icon: selectedTab(
                          'My Fields',
                          isSelected: selectedIndex == 1,
                        ),
                      ),
                      Tab(
                        icon: selectedTab(
                          'My Teams',
                          isSelected: selectedIndex == 2,
                        ),
                      ),
                      Tab(
                        icon: selectedTab(
                          'My Liked Quickies',
                          isSelected: selectedIndex == 3,
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
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xff354038),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Quickies(),
                    ),
                  );
                },
                icon: Image.asset('assets/images/quickies.png'),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/inActivities.png'),
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
