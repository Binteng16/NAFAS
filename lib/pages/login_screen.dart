import 'package:flutter/material.dart';
import 'package:iot_tata/pages/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 50),
                child: Image(
                    image: AssetImage('assets/img_login.png'),
                ),
              ),
              Text('Welcome To NAFAS !',
              style: TextStyle(
                color: Color(0xFF595085),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              ),
              Text('Smarter Living, Better Breathing',
                style: TextStyle(
                    color: Color(0xFF595085),
                    fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0EDFF),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.only(left: 85, right: 20),
                        child: Image(image: AssetImage('assets/icon_google.png'),height: 30,),
                      ),
                      Text(
                        'Log in With Google',
                        style: TextStyle(
                          color: Color(0xFF595085),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFFFFF4F4),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(left: 85, right: 20),
                      child: Image(image: AssetImage('assets/icon_github.png'),height: 30,),
                    ),
                    Text('Log in With Google',
                      style: TextStyle(
                        color: Color(0xFFFF5648),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
