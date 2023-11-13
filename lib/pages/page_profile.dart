import 'package:flutter/material.dart';

class PageProfile extends StatelessWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Center(
                        child: Text('Profile', style: TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF595085)
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20, top: 30, bottom: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/photo.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Thalita \nZharifa",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF595085)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What do you want to do ? ',
                  style: TextStyle(fontSize: 24, color: Color(0xFF595085)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  children: <Widget> [
                    Container(
                      width: 150.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F5FB),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Icon(Icons.settings_outlined, size: 30,color: Color(0xFF3D3270),),
                            SizedBox(height: 10,),
                            Text("Configure \nAlert",
                              style: TextStyle(
                                color: Color(0xFF3D3270),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Set specific thresholds or limits for triggering \nalerts',
                            style: TextStyle(
                              color: Color(0xFF403572),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F9F9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Icon(Icons.sensors, size: 30,color: Color(0xFF479696),),
                            SizedBox(height: 10,),
                            Text("Device \nManager",
                              style: TextStyle(
                                color: Color(0xFF479696),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Monitor the status of \ntheir connected devices',
                              style: TextStyle(
                                color: Color(0xFF8DAEAE),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF4F4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Icon(Icons.logout, size: 30,color: Color(0xFFFF5648),),
                            SizedBox(height: 10,),
                            Text("Logout \nNow",
                              style: TextStyle(
                                color: Color(0xFFFF5648),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Swiftly log out from their \ncurrent session',
                              style: TextStyle(
                                color: Color(0xFFA27A7A),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
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
