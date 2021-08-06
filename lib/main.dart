// @dart=2.9

import 'package:flutter/material.dart';
import 'package:to_do_app/to_dos.dart';
import 'package:to_do_app/rounded_button.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0XFFFF6E3F),
      accentColor: Color(0XFFFF6E3F),
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:  Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: size.height * .12, left: size.width * .1, right: size.width * .1),
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Images/back.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height: size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * .005,
                            ),
                            Container(
                              height: size.height * .18,
                              width: size.width,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "WELCOME",
                                      style: Theme.of(context).textTheme.display1.copyWith(
                                        fontWeight: FontWeight.bold,
                                        backgroundColor: Colors.white70,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\nTO MY TO-DO-LIST APP",
                                      style: Theme.of(context).textTheme.headline.copyWith(
                                        backgroundColor: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * .003,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 15),
                                    blurRadius: 30,
                                    color: Color(0xFF666666).withOpacity(.15),
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 90.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage("assets/Images/icn.png"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:
                              RoundedButton(
                                text: "START",
                                fontSize: 20,
                                press: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => Display()));
                                },
                              ),
                            ),
                            SizedBox(height: size.height *.04),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}



