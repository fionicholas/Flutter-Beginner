import 'package:dekat_tuhan/model/church.dart';
import 'package:flutter/material.dart';

class DetailChurch extends StatelessWidget {
  final Church data;

  DetailChurch({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Gereja'),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding : EdgeInsets.only(top : 30.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                  child: Hero(tag : 'logo-${data.name}',
                      child: Image.asset('images/${data.logoName}')),
                ),
            ),
            Container(
                padding: EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
                child: Text(
                  data.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue'),
                )),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(data.since)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(height: 8.0),
                      Text(data.phoneNumber)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment:Alignment.topLeft,
              padding: EdgeInsets.only(top : 16.0, left: 16.0),
              child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
              alignment:Alignment.topLeft,
              padding: EdgeInsets.only(top : 4.0, left: 16.0),
              child: Text(data.email,),
            ),
            Container(
              alignment:Alignment.topLeft,
              padding: EdgeInsets.only(top : 16.0, left: 16.0),
              child: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0),
              child: Text(
                data.profile,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}