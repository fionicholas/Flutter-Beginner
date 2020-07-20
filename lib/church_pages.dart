import 'package:dekat_tuhan/data_dummy.dart';
import 'package:dekat_tuhan/detail_church.dart';
import 'package:flutter/material.dart';

class ChurchPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical : 16.0),
        child: ListView(
          children: churchList.map((data){
            return FlatButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailChurch(data: data);
              }));
              },
              child: Card(
                color: Colors.blueGrey[300],
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          child: Image.network(data.logoUrl),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(data.since),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}