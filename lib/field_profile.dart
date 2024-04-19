import 'package:flutter/material.dart';

class FieldProfile extends StatefulWidget {
  const FieldProfile({super.key});

  @override
  State<FieldProfile> createState() => _FieldProfileState();
}

class _FieldProfileState extends State<FieldProfile>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  late TabController _tabController;
  int selectedIndex = 0;
  bool follow = false;
  bool loved = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String fieldName = 'Field Name';
    String bio =
        'SOCCER Online Sport Games for adults and children \n gym, indoor swimming pool, 3 football fields';

    int posts = 99;
    int followers = 9999;
    int following = 999;

    String adress = 'Route Sidi Mansour Km 3, Sfax';
    String phone = '99 999 999';
    String mail = 'fieldname@gmail.com';
    int fieldsNb = 9;
    int price = 99;
    String about =
        'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla  bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ';

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
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              fieldName,
              style: const TextStyle(
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
                  onPressed: () {
                    setState(
                      () {
                        loved = !loved;
                      },
                    );
                  },
                  icon: Image.asset(
                    loved == false
                        ? 'assets/images/love.png'
                        : 'assets/images/loved.png',
                    height: width(22),
                    width: width(22),
                  ),
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
              Positioned(
                top: width(13),
                left: width(2),
                child: SizedBox(
                  width: width(428),
                  height: width(187),
                  child: Image.asset(
                    'assets/images/fieldCover.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width(2)),
                child: Image.asset(
                  'assets/images/linear1.png',
                  width: width(426),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(width(2), width(13), width(2), 0),
                child: Image.asset(
                  'assets/images/linear2.png',
                  width: width(426),
                ),
              ),
              Image.asset(
                'assets/images/fieldProfile.png',
                width: screenWidth,
                height: width(261),
              ),
              Positioned(
                top: width(164),
                left: width(146),
                child: Image.asset(
                  'assets/images/fieldProfilePhoto.png',
                  width: width(134),
                  height: width(84),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: width(277)),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width(123),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width(9)),
                              ),
                              foregroundColor: follow == true
                                  ? const Color(0xFFF1EED0)
                                  : const Color(0xFF292929),
                              backgroundColor: follow == true
                                  ? const Color(0xFF599068)
                                  : const Color(0xFF807E73),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(15), vertical: width(13)),
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  follow = !follow;
                                },
                              );
                            },
                            child: follow == true
                                ? Text(
                                    'Follow',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width(12),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Following',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width(12),
                                        ),
                                      ),
                                      SizedBox(width: width(3)),
                                      Column(
                                        children: [
                                          SizedBox(height: width(2)),
                                          Image.asset(
                                            'assets/images/followingUp.png',
                                            width: width(9),
                                            height: width(9),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                        SizedBox(
                          width: width(123),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width(9)),
                              ),
                              foregroundColor: const Color(0xFFF1EED0),
                              backgroundColor: const Color(0xFF474D48),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(15), vertical: width(13)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Contact US',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width(123),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width(9)),
                              ),
                              foregroundColor: const Color(0xFFF1EED0),
                              backgroundColor: const Color(0xFF599068),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(15), vertical: width(13)),
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIndex = 2;
                                _tabController.animateTo(2);
                              });
                            },
                            child: Text(
                              'Book now',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: width(20)),
                  Column(
                    children: [
                      SizedBox(
                        height: width(41),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xFF415346), // Green
                                Color(0xff343835), // Transparent
                              ],
                            ),
                          ),
                          child: TabBar(
                            controller: _tabController,
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
                                  'assets/images/fieldDetailsS.png',
                                  'assets/images/fieldDetails.png',
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
                                  'assets/images/bookS.png',
                                  'assets/images/book.png',
                                  isSelected: selectedIndex == 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  IndexedStack(
                    index: selectedIndex,
                    children: [
                      // Details Tab
                      Column(
                        children: [
                          SizedBox(height: width(30)),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width(61)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/adress2.png',
                                      width: width(16),
                                      height: width(16),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        adress,
                                        style: TextStyle(
                                          color: const Color(0xFF5C7E6C),
                                          fontSize: width(12),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: width(12)),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/phone.png',
                                      width: width(16),
                                      height: width(16),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        phone,
                                        style: TextStyle(
                                          color: const Color(0xFF5C7E6C),
                                          fontSize: width(12),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: width(12)),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/mail.png',
                                      width: width(16),
                                      height: width(16),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        mail,
                                        style: TextStyle(
                                          color: const Color(0xFF5C7E6C),
                                          fontSize: width(12),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: width(32)),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/open.png',
                                      width: width(16),
                                      height: width(16),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Open now',
                                            style: TextStyle(
                                              color: const Color(0xFF599068),
                                              fontSize: width(12),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(width: width(3)),
                                          Column(
                                            children: [
                                              SizedBox(height: width(5)),
                                              Image.asset(
                                                'assets/images/clockUp.png',
                                                width: width(9),
                                                height: width(9),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: width(32)),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/field.png',
                                      width: width(16),
                                      height: width(16),
                                    ),
                                    SizedBox(width: width(5)),
                                    Text(
                                      '$fieldsNb fields',
                                      style: TextStyle(
                                        color: const Color(0xFFF1EED0),
                                        fontSize: width(12),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: width(5)),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/price.png',
                                      width: width(16),
                                      height: width(16),
                                    ),
                                    SizedBox(width: width(5)),
                                    Text(
                                      '$price DNT',
                                      style: TextStyle(
                                        color: const Color(0xFFF1EED0),
                                        fontSize: width(12),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width(100)),
                            child: Column(
                              children: [
                                SizedBox(height: width(35)),
                                Text(
                                  'Our Services',
                                  style: TextStyle(
                                    color: const Color(0xFFF1EED0),
                                    fontSize: width(12),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: width(24)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/park.png',
                                          width: width(14),
                                          height: width(14),
                                        ),
                                        SizedBox(width: width(5)),
                                        Text(
                                          'Parking',
                                          style: TextStyle(
                                            color: const Color(0xFFF1EED0),
                                            fontSize: width(12),
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/wc2.png',
                                          width: width(16),
                                          height: width(16),
                                        ),
                                        SizedBox(width: width(5)),
                                        Text(
                                          'Toilets',
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
                                SizedBox(height: width(5)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/coffe2.png',
                                          width: width(14),
                                          height: width(14),
                                        ),
                                        SizedBox(width: width(5)),
                                        Text(
                                          'Cafeteria',
                                          style: TextStyle(
                                            color: const Color(0xFFF1EED0),
                                            fontSize: width(12),
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/water2.png',
                                          width: width(16),
                                          height: width(16),
                                        ),
                                        SizedBox(width: width(5)),
                                        Text(
                                          'Water',
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
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width(42)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: width(43)),
                                Text(
                                  'about $fieldName',
                                  style: TextStyle(
                                    color: const Color(0xFFBFBCA0),
                                    fontSize: width(12),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: width(9)),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width(18)),
                                  child: Text(
                                    about,
                                    style: TextStyle(
                                      color: const Color(0xFFF1EED0),
                                      fontSize: width(10),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: width(38)),
                        ],
                      ),
                      // Posts Tab
                      Column(
                        children: [
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
                        ],
                      ),
                      // Videos Tab
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Center(
                              child: Text(
                                'Book Tab Content',
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
            ],
          ),
        ),
      ),
    );
  }
}
