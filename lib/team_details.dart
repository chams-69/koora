import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:koora/player_profile.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class TeamDetails extends StatefulWidget {
  const TeamDetails({super.key});

  @override
  State<TeamDetails> createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails> {
  bool sent = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String teamName = 'Team Name';
    String description = 'We are looking for Two Players to complete our Team';
    int max = 7;
    int members = 5;
    int rest = max - members;
    int rate = 99;
    int played = 99;
    int rated = 99;
    int motm = 99;
    String post = 'CM';
    String name = 'NAME';
    String user = 'User_Name';

    return Scaffold(
      backgroundColor: const Color(0xff343835),
      appBar: AppBar(
        backgroundColor: const Color(0xff343835),
        iconTheme: const IconThemeData(color: Color(0xFFF1EED0)),
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Team details',
            style: TextStyle(
              color: Color(0xFFF1EED0),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/share.png'),
              ),
              const SizedBox(width: 5),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: width(15)),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width(21)),
                  child: SizedBox(
                    width: width(388),
                    height: width(228),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/teamBg.png',
                        fit: BoxFit.cover,
                        opacity: const AlwaysStoppedAnimation(0.6),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/linear3.png',
                  width: screenWidth,
                  height: width(253),
                ),
                Column(
                  children: [
                    SizedBox(height: width(52)),
                    Center(
                      child: Text(
                        teamName,
                        style: TextStyle(
                          color: const Color(0xFFF1EED0),
                          fontSize: width(20),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: width(12)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width(88)),
                      child: Text(
                        description,
                        style: TextStyle(
                          color: const Color(0xffF1EED0),
                          fontWeight: FontWeight.normal,
                          fontSize: width(16),
                        ),
                      ),
                    ),
                    SizedBox(height: width(30)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width(41)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      padding: EdgeInsets.all(width(7)),
                                      child: Image.asset(
                                        'assets/images/avatar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: width(5)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Text(
                                        'Organizer',
                                        style: TextStyle(
                                          color: const Color(0xFF599068),
                                          fontSize: width(9),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: width(1)),
                                        child: Text(
                                          'Organizer',
                                          style: TextStyle(
                                            color: const Color(0xFF599068),
                                            fontSize: width(9),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            width(1.14), width(0.5), 0, 0),
                                        child: Text(
                                          'Organizer',
                                          style: TextStyle(
                                            color: const Color(0xFFF1EED0),
                                            fontSize: width(9),
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    user,
                                    style: TextStyle(
                                      color: const Color(0xFFF1EED0),
                                      fontSize: width(10),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/msg.png',
                                  width: width(23),
                                  height: width(24),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/call.png',
                                  width: width(24),
                                  height: width(24),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                SizedBox(
                  width: screenWidth,
                  height: width(279),
                  child: Image.asset(
                    'assets/images/linear4.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: width(27),
                  right: width(41),
                  child: Image.asset(
                    'assets/images/jerseyNum.png',
                    width: width(24),
                    height: width(24),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: width(40)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(width(41), 0, width(82), 0),
                      child: LinearProgressBar(
                        maxSteps: max,
                        progressType: LinearProgressBar
                            .progressTypeLinear, // Use Linear progress
                        currentStep: members,
                        progressColor: const Color(0xff599068),
                        backgroundColor:
                            const Color(0xffF1EED0).withOpacity(0.3),
                      ),
                    ),
                    SizedBox(height: width(24)),
                    Center(
                      child: Text(
                        '$rest positions left of $max',
                        style: TextStyle(
                          color: const Color(0xFFBFBCA0),
                          fontWeight: FontWeight.normal,
                          fontSize: width(14),
                        ),
                      ),
                    ),
                    SizedBox(height: width(35)),
                    Padding(
                      padding: EdgeInsets.only(left: width(22)),
                      child: Text(
                        'positions needed',
                        style: TextStyle(
                          color: const Color(0xFFA09F8D),
                          fontWeight: FontWeight.normal,
                          fontSize: width(14),
                        ),
                      ),
                    ),
                    SizedBox(height: width(24)),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width(33)),
                          child: SizedBox(
                            width: width(33),
                            child: Center(
                              child: Text(
                                'GK',
                                style: TextStyle(
                                  color: const Color(0xFF599068),
                                  fontWeight: FontWeight.w700,
                                  fontSize: width(14),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width(15)),
                        Text(
                          'Goal Keeper',
                          style: TextStyle(
                            color: const Color(0xFFBFBCA0),
                            fontWeight: FontWeight.normal,
                            fontSize: width(14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: width(14)),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width(33)),
                          child: SizedBox(
                            width: width(33),
                            child: Center(
                              child: Text(
                                'RWB',
                                style: TextStyle(
                                  color: const Color(0xFF599068),
                                  fontWeight: FontWeight.w700,
                                  fontSize: width(14),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width(15)),
                        Text(
                          'Right Wing Back',
                          style: TextStyle(
                            color: const Color(0xFFBFBCA0),
                            fontWeight: FontWeight.normal,
                            fontSize: width(14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: width(14)),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width(33)),
                          child: SizedBox(
                            width: width(33),
                            child: Center(
                              child: Text(
                                'CM',
                                style: TextStyle(
                                  color: const Color(0xFF599068),
                                  fontWeight: FontWeight.w700,
                                  fontSize: width(14),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width(15)),
                        Text(
                          'Center Midfielder',
                          style: TextStyle(
                            color: const Color(0xFFBFBCA0),
                            fontWeight: FontWeight.normal,
                            fontSize: width(14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: width(25)),
            Padding(
              padding: EdgeInsets.only(left: width(22)),
              child: Text(
                'Joined Players',
                style: TextStyle(
                  color: const Color(0xFFF1EED0),
                  fontWeight: FontWeight.w600,
                  fontSize: width(14),
                ),
              ),
            ),
            SizedBox(height: width(20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: List.generate(
                      members, // Replace 'numberOfRepetitions' with the desired number of repetitions
                      (index) {
                        return Row(
                          children: [
                            SizedBox(width: width(7)),
                            Column(
                              children: [
                                InkWell(
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
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/images/profile.png',
                                              width: width(140),
                                              height: width(200),
                                            ),
                                            Positioned(
                                              top: width(22),
                                              right: width(14),
                                              child: Image.asset(
                                                'assets/images/avatar.png',
                                                width: width(75),
                                                height: width(84.5),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: width(26.5)),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: width(34)),
                                                  Row(
                                                    children: [
                                                      SizedBox(width: width(1)),
                                                      Text(
                                                        '$rate',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFFF1EED0),
                                                          fontSize: width(16),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(width: width(2)),
                                                      Text(
                                                        post,
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFFF1EED0),
                                                          fontSize: width(9),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: width(9.5)),
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
                                        SizedBox(height: width(10)),
                                        Text(
                                          '$played games',
                                          style: TextStyle(
                                            color: const Color(0xFFF1EED0),
                                            fontSize: width(12),
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        SizedBox(height: width(10)),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/rateIcon.png',
                                                  width: width(20),
                                                  height: width(20),
                                                ),
                                                SizedBox(height: width(3)),
                                                Text(
                                                  '$rated',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFFF1EED0),
                                                    fontSize: width(8),
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: width(8)),
                                            Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/motmIcon.png',
                                                  width: width(20),
                                                  height: width(20),
                                                ),
                                                SizedBox(height: width(3)),
                                                Text(
                                                  '$motm',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFFF1EED0),
                                                    fontSize: width(8),
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: width(15)),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(width: width(7)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: width(50),
        color:
            sent == false ? const Color(0xff599068) : const Color(0xFF807E73),
        child: TextButton(
          onPressed: () {
            setState(() {
              sent = !sent;
            });
          },
          child: Text(
            sent == false ? 'Send Request' : 'Sent...',
            style: TextStyle(
              color: sent == false
                  ? const Color(0xffF1EED0)
                  : const Color(0xFF292929),
              fontSize: width(16),
              fontWeight: sent == false ? FontWeight.w600 : FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
