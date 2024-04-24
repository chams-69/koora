import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koora/fields.dart';
import 'package:koora/game_details.dart';
import 'package:koora/home.dart';
import 'package:koora/my_activities.dart';
import 'package:koora/players.dart';
import 'package:koora/profile.dart';
import 'package:koora/qiuckies.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  double dis = 1;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    int max = 14;
    int members = 11;

    Widget buildStackChildren() {
      List<Widget> stackChildren = [];

      for (int i = 0; i < max - 1; i++) {
        double leftPosition =
            i * width(20); // Adjust left position based on iteration

        stackChildren.add(
          Positioned(
            left: leftPosition,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/profileIcon.png',
                  width: width(25.5),
                  height: width(30),
                ),
                SizedBox(
                  width: width(25.5),
                  height: width(30),
                  child: Padding(
                    padding: EdgeInsets.all(width(5)),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }

      return Stack(
        children: stackChildren,
      );
    }

    String day = 'Today';
    String time = '9:00 pm';
    String gameName = 'Takwira Name';
    String date = 'dd Month, YEAR';
    String fieldName = 'Field Name';
    double price = 99.999;
    double distance = 99.9;

    double sizedBoxWidth = screenWidth < 500 ? width(60) : 69.76744186046512;

    return Scaffold(
      backgroundColor: const Color(0xff343835),
      floatingActionButton: SizedBox(
        width: sizedBoxWidth,
        height: sizedBoxWidth,
        child: InkWell(
          onTap: () {},
          child: Ink(
            child: Image.asset('assets/images/addGame.png'),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff343835),
        iconTheme: const IconThemeData(color: Color(0xFFF1EED0)),
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Games',
            style: TextStyle(
              color: Color(0xFFF1EED0),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const Profile(),
        //       ),
        //     );
        //   },
        //   icon: Stack(
        //     children: [
        //       Image.asset('assets/images/profileIcon.png'),
        //       Padding(
        //         padding: const EdgeInsets.all(6),
        //         child: Image.asset(
        //           'assets/images/avatar.png',
        //           fit: BoxFit.cover,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width(20)),
          child: Column(
            children: [
              SizedBox(height: width(15)),
              Column(
                children: List.generate(
                  10, // Replace 'numberOfRepetitions' with the desired number of repetitions
                  (index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GameDetails(),
                              ),
                            );
                          },
                          child: Ink(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width(2)),
                                  child: SizedBox(
                                    width: width(388),
                                    height: width(226),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/gameBg.png',
                                        fit: BoxFit.cover,
                                        opacity:
                                            const AlwaysStoppedAnimation(0.6),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: width(23),
                                  child: Container(
                                    width: width(104),
                                    height: width(21),
                                    decoration: BoxDecoration(
                                      color: const Color(
                                          0xFF599068), // Green color
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(width(3)),
                                        bottomRight: Radius.circular(width(3)),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          width(13), width(3), 0, 0),
                                      child: Text(
                                        '$day, $time',
                                        style: TextStyle(
                                          color: const Color(0xFFF1EED0),
                                          fontSize: width(10),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: width(40),
                                  left: width(154),
                                  child: Text(
                                    gameName,
                                    style: TextStyle(
                                      color: const Color(0xFFF1EED0),
                                      fontSize: width(12),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: width(62)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(22)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            date,
                                            style: TextStyle(
                                              color: const Color(0xFFF1EED0),
                                              fontSize: width(12),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            fieldName,
                                            style: TextStyle(
                                              color: const Color(0xFFF1EED0),
                                              fontSize: width(12),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: width(2)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(32)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '$price DNT',
                                            style: TextStyle(
                                              color: const Color(0xFFF1EED0),
                                              fontSize: width(12),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            '$distance Km away',
                                            style: TextStyle(
                                              color: const Color(0xFFF1EED0),
                                              fontSize: width(10),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: width(19)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/profileIcon.png',
                                                    width: width(34),
                                                    height: width(40),
                                                  ),
                                                  SizedBox(
                                                    width: width(34),
                                                    height: width(40),
                                                    child: Padding(
                                                      padding: EdgeInsets.all(
                                                          width(7)),
                                                      child: Image.asset(
                                                        'assets/images/avatar.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              // SizedBox(width: width(1)),
                                              // buildStackChildren(),
                                            ],
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: max != members
                                                  ? const Color(0xFFF1EED0)
                                                  : const Color(0xFF292929),
                                              backgroundColor: max != members
                                                  ? const Color(0xFF599068)
                                                  : const Color(0xFF807E73),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        width(5)),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: width(15),
                                                  vertical: width(
                                                      10)), // button's shape
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const GameDetails(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              max != members ? 'Join' : 'Full',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: width(12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: width(14)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(22)),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                LinearProgressBar(
                                                  maxSteps: max,
                                                  progressType: LinearProgressBar
                                                      .progressTypeLinear, // Use Linear progress
                                                  currentStep: members,
                                                  progressColor:
                                                      const Color(0xff599068),
                                                  backgroundColor:
                                                      const Color(0xffF1EED0)
                                                          .withOpacity(0.3),
                                                ),
                                                SizedBox(height: width(4)),
                                                Text(
                                                  '$members',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFFF1EED0),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: width(10),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: width(18)),
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/jerseyNum.png',
                                                width: width(24),
                                                height: width(24),
                                              ),
                                              SizedBox(height: width(4)),
                                              Text(
                                                '$max',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFFF1EED0),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: width(10),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: width(15)),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: const Color(0xff354038),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const Quickies(),
      //             ),
      //           );
      //         },
      //         icon: Image.asset('assets/images/quickies.png'),
      //       ),
      //       IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const MyActivities(),
      //             ),
      //           );
      //         },
      //         icon: Image.asset('assets/images/myActivities.png'),
      //       ),
      //       IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const Home(),
      //             ),
      //           );
      //         },
      //         icon: Image.asset('assets/images/home.png'),
      //       ),
      //       IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const Players(),
      //             ),
      //           );
      //         },
      //         icon: Image.asset('assets/images/players.png'),
      //       ),
      //       IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const Fields(),
      //             ),
      //           );
      //         },
      //         icon: Image.asset('assets/images/fields.png'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
