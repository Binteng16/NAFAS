import 'package:flutter/material.dart';
import 'package:iot_tata/pages/page_profile.dart';
import 'package:iot_tata/pages/status_screen.dart';

import 'news_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              switch (_currentIndex) {
                case 0:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                  break;
                case 1:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => StatusScreen()),
                  );
                  break;
                case 2:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NewsPage()),
                  );
                  break;
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.query_stats),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Container(
                height: 40,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.menu),
                    ),
                    Spacer(),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF595085)),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageProfile()),
                        );
                      },
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 30),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'IOT-Device-1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF595085),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 190,top: 30),
                          child: Container(
                            child: Icon(Icons.filter_alt_outlined),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFF291C6D), Color(0xFFD994A7)], // Adjust the colors as needed
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.gas_meter_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '24/10/23 - IOT-Device-1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFAFCEED),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      'Gas Leak Detected',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFF291C6D), Color(0xFF7497EF)], // Adjust the colors as needed
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.online_prediction,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '24/10/23 - IOT-Device-1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFAFCEED),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      'Sensor went online',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Current Observation : ',
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF595085)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 110,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFFF6F5FB)),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Temperature',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                          Icon(Icons.more_vert,
                                              size: 16,
                                              color: Color(0xFF61598B)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '27°C',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFFF6F5FB)),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Temperature',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                          Icon(Icons.more_vert,
                                              size: 16,
                                              color: Color(0xFF61598B)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '27°C',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFFF6F5FB)),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Temperature',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                          Icon(Icons.more_vert,
                                              size: 16,
                                              color: Color(0xFF61598B)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '27°C',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFFF6F5FB)),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Temperature',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                          Icon(Icons.more_vert,
                                              size: 16,
                                              color: Color(0xFF61598B)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '27°C',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFFF6F5FB)),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Temperature',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                          Icon(Icons.more_vert,
                                              size: 16,
                                              color: Color(0xFF61598B)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '27°C',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Color(0xFF61598B),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Just for you !',
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF595085)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Container(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 90,
                                  width: 350,
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF25196B),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 15),
                                        child: Icon(
                                          Icons.gas_meter_outlined,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '24/10/23 - IOT-Device-1',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFAFCEED),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Gas Leak Detected',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  width: 350,
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF25196B),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 15),
                                        child: Icon(
                                          Icons.gas_meter_outlined,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '24/10/23 - IOT-Device-1',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFAFCEED),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Gas Leak Detected',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  width: 350,
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF25196B),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 15),
                                        child: Icon(
                                          Icons.gas_meter_outlined,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '24/10/23 - IOT-Device-1',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFAFCEED),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Gas Leak Detected',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  width: 350,
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF25196B),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 15),
                                        child: Icon(
                                          Icons.gas_meter_outlined,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '24/10/23 - IOT-Device-1',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFAFCEED),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Gas Leak Detected',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  width: 350,
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF25196B),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 15),
                                        child: Icon(
                                          Icons.gas_meter_outlined,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '24/10/23 - IOT-Device-1',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFAFCEED),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Gas Leak Detected',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
