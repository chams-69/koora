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
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    return Scaffold(
      backgroundColor: const Color(0xFF76A081),
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
    );
  }
}
