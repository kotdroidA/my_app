import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/ui_helper/util.dart';


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
  var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(

        title: Text('Current Date and time',style:TextStyle(fontSize: 20),),
      ),
      body:Column(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Current Time :${time.hour}:${time.minute}:${time.second},',style:Theme.of(context).textTheme.headline1!.copyWith(color:Colors.lightBlue)),
                  ElevatedButton(onPressed:(){
                    setState(() {

});
                  } , child: Text('Current Time'))
                ],
              ),
            ),
          ),

        ],
      )

    );


  }
}
