import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.white, Icons.volume_mute, 'MUTE'),
            _buildButtonColumn(Colors.white, Icons.dialpad, 'KEYPAD'),
            _buildButtonColumn(Colors.white, Icons.speaker, 'SPEAKER'),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.white, Icons.add, 'ADD CALL'),
            _buildButtonColumn(Colors.white, Icons.headset, 'HEADSET'),
            _buildButtonColumn(Colors.white, Icons.phone_bluetooth_speaker, 'BLUETOOTH'),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.white, Icons.dialpad, 'KEYPAD'),
            Column(
             children: <Widget>[
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(25.0),
                   // shape: BoxShape.circle,
                   border: Border.all(color: Colors.grey),
                 ),
                 child: Icon(Icons.call_end, color: Colors.white
                 ),
               ),
               Text('END CALL')
             ],
            ),
            _buildButtonColumn(Colors.white, Icons.contacts, 'CONTACT'),
          ],
        ),
      ],
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
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
                      buttonSection,
                    ],
                  )),
            )));
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
         // shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: Icon(icon, color: Colors.white
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
