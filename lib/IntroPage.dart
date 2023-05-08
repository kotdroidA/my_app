import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class IntroPage extends StatelessWidget{
  var nameFromHome;

  IntroPage(this.nameFromHome);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Container(
        color: Colors.blueGrey.shade300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome $nameFromHome',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: (){
                Navigator.pop(context);

              }, child: Text('Back')),
            ],
          ),
        ),
      ),
    );
  }

}

