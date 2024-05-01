import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CreateGame extends StatefulWidget {
  const CreateGame({super.key});

  @override
  State<CreateGame> createState() => _CreateGameState();
}

class _CreateGameState extends State<CreateGame> {
  int selectedIndex = 0;
  int _selectedNumber = 14;
  List<String> selectedPositions = [];
  List<String> availablePositions = [
    'GK',
    'CB',
    'RB',
    'LB',
    'CDM',
    'CM',
    'CAM',
    'RW',
    'LW',
    'ST'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String date = 'dd mon yyyy, Today';
    String time = '9:00 pm';
    double price = 90;

    Widget selectedTab(String selected, {required bool isSelected}) {
      return Text(
        selected,
        style: TextStyle(
          color: isSelected ? const Color(0xFFF1EED0) : const Color(0xFFBFBCA0),
          fontSize: width(12),
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff343835),
        appBar: AppBar(
          backgroundColor: const Color(0xff343835),
          iconTheme: const IconThemeData(color: Color(0xFFF1EED0)),
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Create Game',
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
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create',
                    style: TextStyle(
                      color: Color(0xFF599068),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: width(13)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width(41)),
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    child: Stack(
                      children: [
                        Container(
                          width: width(348),
                          height: width(174),
                          color: const Color(
                              0xff474D48), // Set your desired color here
                          child: Image.asset(
                            'assets/images/gameBg.png',
                            fit: BoxFit.cover,
                            opacity: const AlwaysStoppedAnimation(0.2),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(height: width(45)),
                            Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/photo.png',
                                  width: width(45),
                                  height: width(45),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Upload Cover Photo',
                                style: TextStyle(
                                  color: const Color(0xFFBFBCA0),
                                  fontSize: width(12),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: width(21)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width(21)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Private Game',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: width(28)),
                    Text(
                      'Game Title',
                      style: TextStyle(
                        color: const Color(0xFFF1EED0),
                        fontSize: width(14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: width(10)),
                    Row(
                      children: [
                        SizedBox(width: width(50)),
                        // TextField(
                        //   style: const TextStyle(color: Color(0xFFF1EED0)),
                        //   decoration: InputDecoration(
                        //     hintText: 'Enter your Team name',
                        //     hintStyle: TextStyle(
                        //       color: const Color(0xFFA09F8D),
                        //       fontSize: width(14),
                        //       fontWeight: FontWeight.normal,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: width(25)),
                    Text(
                      'Description',
                      style: TextStyle(
                        color: const Color(0xFFF1EED0),
                        fontSize: width(14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: width(10)),
                    Row(
                      children: [
                        SizedBox(width: width(50)),
                        // TextField(
                        //   style: const TextStyle(color: Color(0xFFF1EED0)),
                        //   decoration: InputDecoration(
                        //     hintText: 'Enter your Team descreption',
                        //     hintStyle: TextStyle(
                        //       color: const Color(0xFFA09F8D),
                        //       fontSize: width(14),
                        //       fontWeight: FontWeight.normal,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: width(66)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'add Location',
                                style: TextStyle(
                                  color: Color(0xFF599068),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width(20),
                              height: width(20),
                              child: SpeedDial(
                                backgroundColor: Colors.transparent,
                                overlayColor: Colors.black,
                                overlayOpacity: 0.4,
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                children: [
                                  SpeedDialChild(
                                    labelWidget: Container(
                                      padding: const EdgeInsets.all(7.0),
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF1EED0)
                                            .withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(width(20)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width(14)),
                                        child: Text(
                                          'outside Koora fields',
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
                                        color: const Color(0xffF1EED0)
                                            .withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(width(20)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width(14)),
                                        child: Text(
                                          'My existing Booking',
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
                                        color: const Color(0xffF1EED0)
                                            .withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(width(20)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width(14)),
                                        child: Text(
                                          'new Booking',
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
                                child: Image.asset(
                                  'assets/images/adress2.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: width(48)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              date,
                              style: TextStyle(
                                color: const Color(0xFFF1EED0),
                                fontSize: width(12),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: width(8)),
                            Image.asset(
                              'assets/images/date.png',
                              width: width(16),
                              height: width(16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: width(18)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              time,
                              style: TextStyle(
                                color: const Color(0xFFF1EED0),
                                fontSize: width(12),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: width(8)),
                            Image.asset(
                              'assets/images/open.png',
                              width: width(16),
                              height: width(16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: width(18)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '$price',
                              style: TextStyle(
                                color: const Color(0xFFF1EED0),
                                fontSize: width(12),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: width(8)),
                            Text(
                              'DNT',
                              style: TextStyle(
                                color: const Color(0xFF599068),
                                fontSize: width(12),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: width(48)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'No. of players needed',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // Replace IconButton with NumberSelector
                        NumberSelector(
                            selectedNumber: _selectedNumber,
                            onNumberSelected: (number) {
                              setState(() {
                                _selectedNumber = number;
                              });
                            }),
                      ],
                    ),
                    SizedBox(height: width(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Positions needed',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PositionSelector(
                          selectedPositions: selectedPositions,
                          availablePositions: availablePositions,
                          onPositionsSelected: (positions) {
                            setState(() {
                              selectedPositions = positions;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: width(59)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Age group',
                          style: TextStyle(
                            color: const Color(0xFFF1EED0),
                            fontSize: width(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: width(20)),
                        const Expanded(
                          child: AgeGroup(),
                        ),
                        SizedBox(width: width(10)),
                      ],
                    ),
                    SizedBox(height: width(94)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'invite Players from',
                          style: TextStyle(
                            color: const Color(0xFFBFBCA0),
                            fontSize: width(14),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/search.png',
                            width: width(14),
                            height: width(14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: width(8)),
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
                          'Followers',
                          isSelected: selectedIndex == 0,
                        ),
                      ),
                      Tab(
                        icon: selectedTab(
                          'Following',
                          isSelected: selectedIndex == 1,
                        ),
                      ),
                      Tab(
                        icon: selectedTab(
                          'Groups',
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
        ),
      ),
    );
  }
}

class NumberSelector extends StatelessWidget {
  final int selectedNumber;
  final ValueChanged<int> onNumberSelected;

  const NumberSelector({
    required this.selectedNumber,
    required this.onNumberSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    return Row(
      children: [
        Text(
          '$selectedNumber',
          style: TextStyle(
            color: const Color(0xFFF1EED0),
            fontSize: width(14),
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          onPressed: () => _showNumberPicker(context),
          icon: Image.asset(
            'assets/images/playerNo.png',
            width: width(15),
            height: width(15),
          ),
        ),
      ],
    );
  }

  void _showNumberPicker(BuildContext context) {
    showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'You\'re one of those players\nDon\'t forget to count yourself..!',
            textAlign: TextAlign.center,
          ),
          titleTextStyle: const TextStyle(
            color: Color(0xffC3C1A3),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: const Color(0xFF599068).withOpacity(0.4),
          contentPadding: EdgeInsets.zero,
          content: Padding(
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              width: 10,
              height: 300,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  final number = index + 2;
                  return ListTile(
                    title: Center(
                      child: Text(
                        '$number players',
                        style: const TextStyle(
                          color: Color(0xffF1EED0), // Set the text color
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop(number);
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    ).then((value) {
      if (value != null) {
        onNumberSelected(value);
      }
    });
  }
}

class PositionSelector extends StatefulWidget {
  final List<String> selectedPositions;
  final List<String> availablePositions;
  final ValueChanged<List<String>> onPositionsSelected;

  const PositionSelector({
    required this.selectedPositions,
    required this.availablePositions,
    required this.onPositionsSelected,
    super.key,
  });

  @override
  _PositionSelectorState createState() => _PositionSelectorState();
}

class _PositionSelectorState extends State<PositionSelector> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    String positionsText = _getPositionsText();
    return Row(
      children: [
        Text(
          positionsText,
          style: TextStyle(
            color: const Color(0xffA09F8D),
            fontSize: width(12),
          ),
        ),
        IconButton(
          onPressed: () => _showPositionPicker(context),
          icon: Image.asset(
            'assets/images/positions.png',
            width: width(18),
            height: width(18),
          ),
        ),
      ],
    );
  }

  String _getPositionsText() {
    if (widget.selectedPositions.isEmpty) {
      return 'Any';
    } else if (widget.selectedPositions.length ==
        widget.availablePositions.length) {
      return 'All';
    } else {
      return widget.selectedPositions.join(', ');
    }
  }

  void _showPositionPicker(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: Padding(
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              width: 300,
              height: 426.52,
              child: Stack(
                children: [
                  // Background image
                  Image.asset(
                    'assets/images/positionField.png',
                    fit: BoxFit.cover,
                  ),
                  // Stack of position images and texts
                  Positioned(
                    left: 117.5,
                    bottom: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'GK', widget.selectedPositions.contains('GK'), () {
                        _updateSelectedPosition('GK');
                      }),
                    ),
                  ),
                  Positioned(
                    left: 117.5,
                    bottom: 71,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'CB', widget.selectedPositions.contains('CB'), () {
                        _updateSelectedPosition('CB');
                      }),
                    ),
                  ),
                  Positioned(
                    left: 117.5,
                    bottom: 137,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'CDM', widget.selectedPositions.contains('CDM'), () {
                        _updateSelectedPosition('CDM');
                      }),
                    ),
                  ),
                  Positioned(
                    left: 117.5,
                    bottom: 204,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'CM', widget.selectedPositions.contains('CM'), () {
                        _updateSelectedPosition('CM');
                      }),
                    ),
                  ),
                  Positioned(
                    left: 117.5,
                    top: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'CAM', widget.selectedPositions.contains('CAM'), () {
                        _updateSelectedPosition('CAM');
                      }),
                    ),
                  ),
                  Positioned(
                    right: 117.5,
                    top: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'ST', widget.selectedPositions.contains('ST'), () {
                        _updateSelectedPosition('ST');
                      }),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 85,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'RB', widget.selectedPositions.contains('RB'), () {
                        _updateSelectedPosition('RB');
                      }),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 85,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'LB', widget.selectedPositions.contains('LB'), () {
                        _updateSelectedPosition('LB');
                      }),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'RW', widget.selectedPositions.contains('RW'), () {
                        _updateSelectedPosition('RW');
                      }),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: _buildPositionStack(
                          'LW', widget.selectedPositions.contains('LW'), () {
                        _updateSelectedPosition('LW');
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPositionStack(
    String position,
    bool isSelected,
    Function() onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/profileIcon.png',
            width: 50,
            height: 50,
          ),
          Image.asset(
            'assets/images/profileIcon.png',
            width: 50,
            height: 50,
            color: isSelected
                ? const Color(0xff599068).withOpacity(0.2)
                : const Color(0xff923E3E).withOpacity(0.2),
          ),
          Text(
            position,
            style: const TextStyle(
              color: Color(0xffF1EED0),
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            position,
            style: TextStyle(
              color: isSelected
                  ? const Color(0xff599068)
                  : const Color(0xff923E3E),
              fontSize: 15,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }

  void _updateSelectedPosition(
    String position,
  ) {
    setState(() {
      if (widget.selectedPositions.contains(position)) {
        widget.selectedPositions.remove(position);
      } else {
        widget.selectedPositions.add(position);
      }
    });

    // Update the selected positions and trigger a rebuild
    widget.onPositionsSelected(widget.selectedPositions);
  }
}

class AgeGroup extends StatefulWidget {
  const AgeGroup({super.key});

  @override
  State<AgeGroup> createState() => _AgeGroupState();
}

class _AgeGroupState extends State<AgeGroup> {
  RangeValues _currentRangeValues = const RangeValues(8, 80);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double a = 0;
    double width(double width) {
      a = width / 430;
      return screenWidth * a;
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _currentRangeValues.start.round().toString(),
              style: TextStyle(
                color: const Color(0xFFBFBCA0),
                fontSize: width(12),
              ),
            ),
            Text(
              '  -  ',
              style: TextStyle(
                color: const Color(0xFFBFBCA0),
                fontSize: width(12),
              ),
            ),
            Text(
              _currentRangeValues.end.round().toString(),
              style: TextStyle(
                color: const Color(0xFFBFBCA0),
                fontSize: width(12),
              ),
            ),
          ],
        ),
        RangeSlider(
          values: _currentRangeValues,
          min: 8,
          max: 80,
          activeColor: const Color(0xff599068),
          inactiveColor: const Color(0xffF1EED0).withOpacity(0.3),
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ],
    );
  }
}
