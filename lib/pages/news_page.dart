import 'package:flutter/material.dart';
import 'package:iot_tata/pages/status_screen.dart';

import 'dashboard.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}
class _NewsPageState extends State<NewsPage> {
  int _currentIndex = 2;
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
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back),
                  Spacer(),
                  Text(
                    'Activity Log',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF595085)),
                  ),
                  Spacer(),
                  Icon(
                    (Icons.person),
                  ),
                ],
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
