import 'dart:ui';

import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("BizCard"),
      ) ,

      body: Container(
        alignment: Alignment.center,

        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
              _getCard(),
              _getAvatar()
           // Text("Hello")
          ],
        )
      )
    );
  }

  Container _getCard() {
      return Container(
        width: 350,
        height: 200,
        margin: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color:Colors.deepOrange,
          borderRadius: BorderRadius.circular(16.5)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("Julia Smith",
           style: TextStyle(fontSize:20.9,
             color: Colors.white,
             fontWeight: FontWeight.bold),
           ),
           Text("Software Developer",
             style: TextStyle(

               shadows: <Shadow>[
                 Shadow(
                   offset: Offset(5.0, 5.0),
                   blurRadius: 2.0,
                   color: Color.fromARGB(255, 0, 0, 0),
                 ),
                 Shadow(
                   offset: Offset(5.0, 5.0),
                   blurRadius: 1.0,
                   color: Color.fromARGB(125, 0, 0, 255),
                 ),
               ],

             )
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget> [
               Icon(Icons.person_outline),
               Text("T:@mytweeterhandle")
             ]
           )
         ],
        ),
      );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color:Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border:Border.all(color:Colors.redAccent, width:1.2),
        image: DecorationImage(image:NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover)

      )
    );
  }
}
