import 'package:flutter/material.dart';

class ProfilePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/fiorent.png'),
                ),
                Text('Fiorent Nicholas Y',
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'
                  ),
                ),
                Text('Android Developer',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[100],
                      letterSpacing: 2.5,
                      fontFamily: 'Source Sans Pro'
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                  elevation: 10.0,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '+62 812 3456 7891',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Source Sans Pro',
                            color: Colors.teal[900]
                        ),
                      )
                  ),
                ),
                Card(
                    elevation: 10.0,
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                          Icons.email,
                          color: Colors.teal[900]
                      ),
                      title : Text(
                        'fionicholas05@gmail.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Source Sans Pro',
                            color: Colors.teal[900]
                        ),
                      ),
                    )
                )
              ],
            )
        ),
      );
  }
}