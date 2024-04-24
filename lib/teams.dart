import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:koora/create_team.dart';
import 'package:koora/fields.dart';
import 'package:koora/home.dart';
import 'package:koora/my_activities.dart';
import 'package:koora/players.dart';
import 'package:koora/profile.dart';
import 'package:koora/qiuckies.dart';
import 'package:koora/team_details.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Teams extends StatefulWidget {
  const Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String teamName = 'Team Name';
    String description = 'We"re looking for an apponent to play against us';
    int max = 7;
    int members = 5;

    double sizedBoxHeight = screenWidth < 500 ? width(60) : 69.76744186046512;
    double sizedBoxWidth = screenWidth < 500 ? width(53) : 61.62790697674419;
    return Scaffold(
      backgroundColor: const Color(0xff343835),
      floatingActionButton: SizedBox(
        width: sizedBoxWidth,
        height: sizedBoxHeight,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateTeam(),
              ),
            );
          },
          child: Ink(
            child: Image.asset('assets/images/addTeam.png'),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff343835),
        iconTheme: const IconThemeData(color: Color(0xFFF1EED0)),
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Teams',
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
          padding: EdgeInsets.symmetric(horizontal: width(21)),
          child: Column(
            children: [
              SizedBox(height: width(15)),
              Column(
                children: List.generate(
                  10,
                  (index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TeamDetails(),
                              ),
                            );
                          },
                          child: Ink(
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: width(388),
                                  height: width(224),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/images/teamBg.png',
                                      fit: BoxFit.cover,
                                      opacity:
                                          const AlwaysStoppedAnimation(0.6),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: width(39),
                                  left: width(159),
                                  child: Text(
                                    teamName,
                                    style: TextStyle(
                                      color: const Color(0xFFF1EED0),
                                      fontSize: width(12),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: width(72)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(20)),
                                      child: Text(
                                        description,
                                        style: TextStyle(
                                          color: const Color(0xffF1EED0),
                                          fontWeight: FontWeight.normal,
                                          fontSize: width(10),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: width(20)),
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
                                                    width: width(54),
                                                    height: width(60),
                                                  ),
                                                  SizedBox(
                                                    width: width(54),
                                                    height: width(60),
                                                    child: Padding(
                                                      padding: EdgeInsets.all(
                                                          width(10)),
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
                                              foregroundColor:
                                                  const Color(0xFFF1EED0),
                                              backgroundColor:
                                                  const Color(0xFF599068),
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
                                                      const TeamDetails(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              max != members
                                                  ? 'Join'
                                                  : 'Contact',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: width(12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: width(10)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(20)),
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
                                ),
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
