import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Widgets/rounded_button.dart';
import 'package:my_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),

        )

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

 }
 class MyHomeState extends State<MyHomePage>{
  var count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count :$count',style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
              count++;
              print(count);

              setState(() {

              });
            }, child: Text('Increment Count'))
          ],
        ),
      ),
    );
  }

 }



