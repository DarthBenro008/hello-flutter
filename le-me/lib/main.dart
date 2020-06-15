import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
//        appBar: AppBar(
//          backgroundColor: Colors.teal,
//          title: Text("Hello Flutter"),
//        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              Text(
                'Hemanth Krishna',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Pacifico',
                  color: Colors.white
                ),
              ),
              Text(
                "Tech Enthusiast",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title:Text(
                      '+91 9999999999',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ) ,
                  )

              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0,horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title:Text(
                      'abc@example.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ) ,
                  )
              ),
            ],
          )
        ),
      ),
    );
  }
}


