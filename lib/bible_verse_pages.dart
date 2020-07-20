import 'package:dekat_tuhan/data_dummy.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BibleVersePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical : 16.0),
        child: ListView(
          children: versesList.map((data){
            return FlatButton(
              onPressed: (){
                Fluttertoast.showToast(
                    msg: "${data.clause}",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.blueGrey,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
              child: Card(
                color: Colors.blueGrey[300],
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        data.clause,
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(data.verse),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}