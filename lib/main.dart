import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Widgets/rounded_button.dart';
import 'package:my_app/ui_helper/util.dart';
import 'package:intl/intl.dart';


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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
  var arrName = ['Raman','Ramnaujan','jemes','john','Ronit','Vinayak','virat',];
  var arrColors = [Colors.red,Colors.orange,Colors.grey,Colors.blue,Colors.pink,Colors.green,Colors.purpleAccent,Colors.brown];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: Text('Custom Widget',style:TextStyle(fontSize: 20),)
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 50,
              child: RoundedButton(buttonName: 'Play',
                icon: Icon(Icons.play_arrow),
                callback: (){
                print('Playing !!');

              },
                textStyle: mTextStyle16(),

              ),
            ),
            Container(height: 11,),
            Container(
              width: 100,
              height: 50,
              child: RoundedButton(buttonName: 'Press',

                callback: (){
                  print(' Press !!');

                },
                bgColor: Colors.orange,
                textStyle: mTextStyle21(),

              ),
            ),

          ],
        ),
      )
    );

  }
}
