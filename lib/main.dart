import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

        title: Text('Stack Widget',style:TextStyle(fontSize: 20),)
      ),
      body:Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
            ),
            Positioned(
              left: 21,
              top: 21,

              child: Container(
                width: 200,
                height: 200,
                color: Colors.grey,
              ),
            )
          ],
        ),
      )
    );










    //Column(
    //         children: [
    //           Container(
    //             height: 200,
    //             child: GridView.count(
    //               crossAxisCount: 4,
    //               crossAxisSpacing: 11,
    //               mainAxisSpacing: 11,
    //               children: [
    //                 Container(color: arrColors[0],),
    //                 Container(color: arrColors[1],),
    //                 Container(color: arrColors[2],),
    //                 Container(color: arrColors[3],),
    //                 Container(color: arrColors[4],),
    //                 Container(color: arrColors[5],),
    //                 Container(color: arrColors[6],),
    //                 Container(color: arrColors[7],)
    //               ],
    //             ),
    //           ),
    //           Container(
    //             height: 100,
    //           ),
    //           Container(
    //             height: 200 ,
    //             child: GridView.extent(
    //               maxCrossAxisExtent: 50,
    //               crossAxisSpacing: 11,
    //               mainAxisSpacing: 11,
    //               children: [
    //                 Container(color: arrColors[0],),
    //                 Container(color: arrColors[1],),
    //                 Container(color: arrColors[2],),
    //                 Container(color: arrColors[3],),
    //                 Container(color: arrColors[4],),
    //                 Container(color: arrColors[5],),
    //                 Container(color: arrColors[6],),
    //                 Container(color: arrColors[7],)
    //               ],
    //             ),
    //           ),
    //
    //         ],
    //       )


  }
}
