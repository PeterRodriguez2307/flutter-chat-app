import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  
  final String title;

  const Logo({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[

            Image(image: AssetImage('assets/tag-logo.png')),
            SizedBox(height: 20,),
            Text(this.title, style: TextStyle(fontSize: 30),),
            
          ],
        ),
      ),
    );
  }
}