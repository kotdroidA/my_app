import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Welcome to my home',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purpleAccent),),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage(),
                  ));

            }, child: Text('Show Magic')),
          ],
        ),
      ),
    );
  }

}