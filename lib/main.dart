import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Splash_Screen.dart';
import 'package:my_app/Widgets/rounded_button.dart';
import 'package:my_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IntroPage.dart';


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
      home: SplashScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          title: Text('DashBoard'),
        ),
      body: Center(child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DashBoard Screen',style: TextStyle(fontSize: 21,color: Colors.deepOrange),),

            SizedBox(height: 11,),
            TextField(
              controller: nameController,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IntroPage(nameController.text.toString())));
            }, child: Text('My Profile')),
          ],
        ),
      )
      ),
    );
    }

}


















/* Container(
color: Colors.purple.shade100,
child: Center(
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
TextField(
keyboardType: TextInputType.number,
controller:no1Controller ,
),
TextField(
keyboardType: TextInputType.number,
controller: no2Controller,
),
Padding(
padding: const EdgeInsets.all(21),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(onPressed: (){
var no1 = int.parse(no1Controller.text.toString());
var no2 = int.parse(no2Controller.text.toString());
var sum = no1+no2;
result = "The sum of $no1 and $no2 is $sum";
setState(() {

});
}, child: Text('Add')),

ElevatedButton(onPressed: (){
var no1 = int.parse(no1Controller.text.toString());
var no2 = int.parse(no2Controller.text.toString());
var  diff = no1-no2;
result = "The Difference between $no1 and $no2 is $diff";
setState(() {

});
}, child: Text('Sub')),

ElevatedButton(onPressed: (){
var no1 = int.parse(no1Controller.text.toString());
var no2 = int.parse(no2Controller.text.toString());
var  product = no1*no2;
result = "The Product of $no1 and $no2 is $product";
setState(() {

});
}, child: Text('Mul')),

ElevatedButton(onPressed: (){
var no1 = int.parse(no1Controller.text.toString());
var no2 = int.parse(no2Controller.text.toString());
var  times = no1/no2;
result = "The $no1 can be divided by $no2,   "
"${times.toStringAsFixed(2)}times.";
setState(() {

});
}, child: Text('Div')),
],
),
),
Padding(padding: EdgeInsets.all(21),child: Text(result,style: TextStyle(fontSize: 25,color: Colors.white),),)
],
),
),

),
),*/


