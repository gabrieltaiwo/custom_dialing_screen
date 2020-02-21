import 'package:custom_dialing_screen/bttns.dart';
import 'package:flutter/material.dart';
//import 'package:custom_dialing_screen/bttns.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MyHomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bkimg1.jpg"),
                    fit: BoxFit.cover
                  )
              ),
              child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: ListView(
                    children: <Widget>[
                      SizedBox(height: 60.0),
                      Center(
                        child: Text(
                          'Odeyem Falua',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        child: Center(
                          child: Icon(Icons.call,
                              color: Colors.white,
                              size: 50.0
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Center(
                        child: Text(
                          'dialing....',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      //buttonSection,                     
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          BuildButton(
                            color: Colors.white,
                            grcolor: Colors.grey,
                              label: 'SPEAKER',
                              activeIcon: Icons.volume_up,
                             inactiveIcon: Icons.volume_up,
                                onPressed: (){},
                          ),
                          BuildButton(
                           color: Colors.grey,
                            grcolor: Colors.white,
                              label: 'KEYPAD',
                              activeIcon: Icons.dialpad,
                              inactiveIcon: Icons.dialpad,
                                onPressed: (){

                                },
                          ),
                          BuildButton(
                            color: Colors.white,
                            grcolor: Colors.grey,
                              label: 'HEADSET',
                              activeIcon: Icons.phone_bluetooth_speaker,
                              inactiveIcon: Icons.phone_bluetooth_speaker,
                                onPressed: (){},
                          ),
                        ],
                      ),
                       SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          BuildButton(
                            color: Colors.white,
                            grcolor: Colors.grey ,
                              label: 'ADD CALL',
                              activeIcon: Icons.add_call,
                              inactiveIcon: Icons.add_call,
                                onPressed: (){},
                          ),
                          BuildButton(
                            color: Colors.grey,
                            grcolor: Colors.white,
                            btncolor: Colors.red,
                              label: 'END CALL',
                              activeIcon: Icons.call_end,
                              inactiveIcon: Icons.call_end,
                                onPressed: (){},
                          ),
                          BuildButton(
                            color: Colors.white,
                            grcolor: Colors.grey,
                              label: 'MUTE',
                              activeIcon: Icons.mic_off,
                              inactiveIcon: Icons.mic_off,
                                onPressed: (){},
                          ),
                        ],
                      ),
                  ]),
    ))));
  }
}