import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex = 0;
  bool foot = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String name = 'NAME';
    String user = 'User_Name';
    String bio = 'Bio description bla bla bla bla bla bla bla bla bla .';
    int rate = 99;
    int rated = 99;
    int motm = 99;
    int played = 99;
    int upcoming = 9;
    int posts = 99;
    int followers = 9999;
    int following = 999;

    int age = 99;
    int height = 199;
    int weight = 99;
    String post = 'CM';
    String post2 = 'CAM, LW';

    int jerseyNumber = 99;
    List<int> num1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    double leftPosition = num1.contains(jerseyNumber) ? width(25) : width(21);

    Widget selectedTab(String selected, String dselected,
        {required bool isSelected}) {
      return isSelected
          ? Image.asset(
              selected,
              width: width(32), // Adjust width as needed
              height: width(32), // Adjust height as needed
            )
          : Image.asset(
              dselected,
              width: width(32), // Adjust width as needed
              height: width(32), // Adjust height as needed
            );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff343835),
        appBar: AppBar(
          backgroundColor: const Color(0xff343835),
          iconTheme: const IconThemeData(color: Color(0xFFF1EED0)),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/edit.png'),
                ),
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
          child: Stack(
            children: [
              SizedBox(
                width: screenWidth,
                height: width(144),
                child: Image.asset(
                  'assets/images/coverPhoto.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: width(60)),
                  Row(
                    children: [
                      SizedBox(width: width(20)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: width(120)),
                          Row(
                            children: [
                              Text(
                                'Rated',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                ' $rated ',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'times',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(width: width(6)),
                              Image.asset(
                                'assets/images/rateIcon.png',
                                width: width(12),
                                height: width(12),
                              ),
                            ],
                          ),
                          SizedBox(height: width(6)),
                          Row(
                            children: [
                              Text(
                                '$motm ',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Man Of The Match',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(width: width(6)),
                              Image.asset(
                                'assets/images/motmIcon.png',
                                width: width(12),
                                height: width(12),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: width(4)),
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
                            padding:
                                EdgeInsets.symmetric(horizontal: width(26.5)),
                            child: Column(
                              children: [
                                SizedBox(height: width(34)),
                                Row(
                                  children: [
                                    SizedBox(width: width(1)),
                                    Text(
                                      '$rate',
                                      style: TextStyle(
                                        color: const Color(0xFFF1EED0),
                                        fontSize: width(16),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: width(1.5)),
                                    Text(
                                      post,
                                      style: TextStyle(
                                        color: const Color(0xFFF1EED0),
                                        fontSize: width(9),
                                        fontWeight: FontWeight.normal,
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
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(10),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: width(10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: width(65)),
                          Text(
                            '@ $user',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(10),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: width(11)),
                          Row(
                            children: [
                              SizedBox(width: width(15)),
                              Text(
                                '$played ',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'played Games',
                                style: TextStyle(
                                  color: const Color(0xFFF1EED0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: width(3)),
                          Row(
                            children: [
                              SizedBox(width: width(15)),
                              Text(
                                '$upcoming ',
                                style: TextStyle(
                                  color: const Color(0xFFBFBCA0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'upcoming Games',
                                style: TextStyle(
                                  color: const Color(0xFFBFBCA0),
                                  fontSize: width(10),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: width(15)),
                  Row(
                    children: [
                      SizedBox(width: width(109)),
                      Column(
                        children: [
                          Text(
                            '$posts',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(12),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: width(5)),
                          Text(
                            'Posts',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(12),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: width(49)),
                      Column(
                        children: [
                          Text(
                            '$followers',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(12),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: width(5)),
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(12),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: width(38)),
                      Column(
                        children: [
                          Text(
                            '$following',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(12),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: width(5)),
                          Text(
                            'Following',
                            style: TextStyle(
                              color: const Color(0xFFF1EED0),
                              fontSize: width(12),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: width(37)),
                  Row(
                    children: [
                      SizedBox(width: width(20)),
                      Text(
                        bio,
                        style: TextStyle(
                          color: const Color(0xFFF1EED0),
                          fontSize: width(10),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: width(20)),
                  SizedBox(
                    height: width(41),
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
                        dividerColor: const Color(0xFF4E6955),
                        indicatorColor: const Color(0xFFF1EED0),
                        indicatorSize: TabBarIndicatorSize.tab,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        tabs: [
                          Tab(
                            icon: selectedTab(
                              'assets/images/detailsS.png',
                              'assets/images/details.png',
                              isSelected: selectedIndex == 0,
                            ),
                          ),
                          Tab(
                            icon: selectedTab(
                              'assets/images/postsS.png',
                              'assets/images/posts.png',
                              isSelected: selectedIndex == 1,
                            ),
                          ),
                          Tab(
                            icon: selectedTab(
                              'assets/images/videosS.png',
                              'assets/images/videos.png',
                              isSelected: selectedIndex == 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IndexedStack(
                    index: selectedIndex,
                    children: [
                      // Details Tab
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width(62)),
                        child: Column(
                          children: [
                            SizedBox(height: width(30)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '$age Years',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: width(38)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Height',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '$height cm',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: width(38)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '$weight Kg',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: width(38)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Foot',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        foot = !foot;
                                      },
                                    );
                                  },
                                  child: Text(
                                    foot == true ? 'Right' : 'Left',
                                    style: TextStyle(
                                      color: const Color(0xFFF1EED0),
                                      fontSize: width(16),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: width(38)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Jersey Number',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/jerseyNum.png',
                                      width: width(60),
                                      height: width(60),
                                    ),
                                    Positioned(
                                      top: width(20),
                                      left: leftPosition,
                                      child: Text(
                                        '$jerseyNumber',
                                        style: TextStyle(
                                          color: const Color(0xFFF1EED0),
                                          fontSize: width(14),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: width(38)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Position',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  post,
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: width(38)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Other Positions',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  post2,
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(16),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: width(38)),
                          ],
                        ),
                      ),
                      // Posts Tab
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: Text(
                            'Posts Tab Content',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width(20),
                            ),
                          ),
                        ),
                      ),
                      // Videos Tab
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: Text(
                            'Quickies Tab Content',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width(20),
                            ),
                          ),
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
    );
  }
}
