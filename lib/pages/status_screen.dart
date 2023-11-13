import 'package:flutter/material.dart';
import 'package:iot_tata/pages/page_profile.dart';

import 'dashboard.dart';
import 'news_page.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  int _currentIndex = 1;
  @override
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
                      'Status',
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'IOT-Device-1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF595085),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFF595085),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget> [
                        Container(
                          height: 90,
                          width: 350,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F5FB),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.device_thermostat,
                                  color: Color(0xFF403572),
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Temperature',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF403572),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '27°C',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFF403572),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xFF403572),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 350,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFF4F4),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.water_drop,
                                  color: Color(0xFFFF3726),
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Humidity',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFFFF3726),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '60%',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFFFF3726),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xFF403572),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 350,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF5F9F9),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.gas_meter_outlined,
                                  color: Color(0xFF479696),
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Methane',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF479696),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '22ppm',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFF479696),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xFF403572),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 350,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFFDF9FB),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.factory_outlined,
                                  color: Color(0xFFC93F8D),
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Dust',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFFC93F8D),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '12mg/m³',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFFC93F8D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xFF403572),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 350,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF2FDEF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25, right: 15),
                                child: Icon(
                                  Icons.sensors,
                                  color: Color(0xFF72B062),
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Temperature',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF72B062),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '27°C',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFF72B062),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xFF403572),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
