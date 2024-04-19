import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:koora/fields.dart';
import 'package:koora/home.dart';
import 'package:koora/my_activities.dart';
import 'package:koora/player_profile.dart';
import 'package:koora/profile.dart';
import 'package:koora/qiuckies.dart';

class Players extends StatefulWidget {
  const Players({super.key});

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  bool follow = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String name = 'NAME';
    String post = 'CM';
    int rate = 99;

    double leftPosition = follow == true ? width(62.5) : width(58.5);

    double radius = screenWidth < 500 ? width(15) : 17.44186046511628;
    double sizedBoxWidth = screenWidth < 500 ? width(60) : 69.76744186046512;
    double activeAdd = screenWidth < 500 ? width(50) : 48.13953488372093;

    return Scaffold(
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
            'Players',
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
                icon: Image.asset('assets/images/top.png'),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/search.png'),
              ),
              const SizedBox(width: 5)
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width(50)),
          child: Column(
            children: [
              SizedBox(height: width(15)),
              Column(
                children: List.generate(
                  10,
                  (index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            2,
                            (index) {
                              return Row(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            width(1.5), 0, 0, width(13)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PlayerProfile(),
                                              ),
                                            );
                                          },
                                          child: Ink(
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/images/profile.png',
                                                  width: width(140),
                                                  height: width(200),
                                                ),
                                                Positioned(
                                                  top: width(22),
                                                  right: width(14),
                                                  child: SizedBox(
                                                    child: Image.asset(
                                                      width: width(70),
                                                      height: width(86),
                                                      'assets/images/avatar.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: width(26.5)),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                          height: width(34)),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width: width(1)),
                                                          Text(
                                                            '$rate',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFFF1EED0),
                                                              fontSize:
                                                                  width(16),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width: width(2)),
                                                          Text(
                                                            post,
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFFF1EED0),
                                                              fontSize:
                                                                  width(9),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                          height: width(9.5)),
                                                      Image.asset(
                                                        'assets/images/tunisia.png',
                                                        width: width(16),
                                                        height: width(12),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  top: width(109),
                                                  child: SizedBox(
                                                    width: width(140),
                                                    child: Center(
                                                      child: Text(
                                                        name,
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFFF1EED0),
                                                          fontSize: width(10),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: width(169.5),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Ink(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/text.png',
                                                  width: width(13.4),
                                                  height: width(12.86),
                                                ),
                                                Text(
                                                  'Message',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFFF1EED0),
                                                    fontSize: width(6),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: width(168),
                                        right: 8,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Ink(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/invite.png',
                                                  width: width(12.86),
                                                  height: width(12.86),
                                                ),
                                                Text(
                                                  'invite',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFFF1EED0),
                                                    fontSize: width(6),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: leftPosition,
                                        child: InkWell(
                                          onTap: () {
                                            setState(
                                              () {
                                                follow = !follow;
                                              },
                                            );
                                          },
                                          child: Ink(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  follow == true
                                                      ? 'assets/images/follow.png'
                                                      : 'assets/images/following.png',
                                                  width: width(13.93),
                                                  height: width(13.93),
                                                ),
                                                Text(
                                                  follow == true
                                                      ? 'Follow'
                                                      : 'Following',
                                                  style: TextStyle(
                                                    color: follow == true
                                                        ? const Color(
                                                            0xFFF1EED0)
                                                        : const Color(
                                                            0xFF807E73),
                                                    fontSize: width(6),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        SizedBox(height: width(40)),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
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
              onPressed: () {},
              icon: Image.asset('assets/images/inPlayers.png'),
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
