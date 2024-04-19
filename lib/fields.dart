import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:koora/field_profile.dart';
import 'package:koora/home.dart';
import 'package:koora/my_activities.dart';
import 'package:koora/players.dart';
import 'package:koora/profile.dart';
import 'package:koora/qiuckies.dart';

class Fields extends StatefulWidget {
  const Fields({super.key});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  bool loved = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    double price = 99.999;
    double distance = 99.9;
    String adress = 'Route Sfax Km 99';
    String fieldName = 'Field Name';

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
            'Fields',
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
        //   children: [
        //     Image.asset('assets/images/profileIcon.png'),
        //     Padding(
        //       padding: const EdgeInsets.all(6),
        //       child: Image.asset(
        //         'assets/images/avatar.png',
        //         fit: BoxFit.cover,
        //       ),
        //     )
        //   ],
        // ),
        // ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/map.png'),
              ),
              SizedBox(width: width(30)),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/calander.png'),
              ),
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
          padding: EdgeInsets.symmetric(horizontal: width(60)),
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
                                builder: (context) => const FieldProfile(),
                              ),
                            );
                          },
                          child: Ink(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width(2)),
                                  child: SizedBox(
                                    width: width(306.59),
                                    height: width(177),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/fieldBg.png',
                                        fit: BoxFit.cover,
                                        opacity:
                                            const AlwaysStoppedAnimation(0.6),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: width(15),
                                  child: Container(
                                    width: width(70),
                                    height: width(17),
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
                                          width(7), width(1), 0, 0),
                                      child: Text(
                                        '$price DNT',
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
                                  top: width(36),
                                  left: width(123),
                                  child: Text(
                                    fieldName,
                                    style: TextStyle(
                                      color: const Color(0xFFF1EED0),
                                      fontSize: width(12),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width(22)),
                                  child: Column(
                                    children: [
                                      SizedBox(height: width(65)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/parking.png',
                                                width: width(10),
                                                height: width(10),
                                              ),
                                              SizedBox(width: width(5)),
                                              Text(
                                                'Parking',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFFF1EED0),
                                                  fontSize: width(10),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/adress.png',
                                                width: width(12),
                                                height: width(12),
                                              ),
                                              SizedBox(width: width(2)),
                                              Text(
                                                adress,
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFFF1EED0),
                                                  fontSize: width(10),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: width(2)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/coffe.png',
                                                width: width(10),
                                                height: width(10),
                                              ),
                                              SizedBox(width: width(5)),
                                              Text(
                                                'Cafeteria',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFFF1EED0),
                                                  fontSize: width(10),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
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
                                      SizedBox(height: width(2)),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/wc.png',
                                            width: width(10),
                                            height: width(10),
                                          ),
                                          SizedBox(width: width(5)),
                                          Text(
                                            'Toilets',
                                            style: TextStyle(
                                              color: const Color(0xFFF1EED0),
                                              fontSize: width(10),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: width(2)),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/water.png',
                                            width: width(10),
                                            height: width(10),
                                          ),
                                          SizedBox(width: width(5)),
                                          Text(
                                            'Water',
                                            style: TextStyle(
                                              color: const Color(0xFFF1EED0),
                                              fontSize: width(10),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: width(123),
                                  right: width(22),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: const Color(0xFFF1EED0),
                                      backgroundColor: const Color(0xFF599068),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(width(5)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width(15),
                                          vertical:
                                              width(10)), // button's shape
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const FieldProfile(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Book',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: width(17),
                                  right: width(29),
                                  child: InkWell(
                                    onTap: () {
                                      setState(
                                        () {
                                          loved = !loved;
                                        },
                                      );
                                    },
                                    child: Ink(
                                      child: Image.asset(
                                        loved == false
                                            ? 'assets/images/love.png'
                                            : 'assets/images/loved.png',
                                        width: width(19),
                                        height: width(19),
                                      ),
                                    ),
                                  ),
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
      //         onPressed: () {},
      //         icon: Image.asset('assets/images/inFields.png'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
