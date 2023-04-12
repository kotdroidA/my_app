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
var emailText=TextEditingController();
var passText=TextEditingController();

  @override
  Widget build(BuildContext context) {
  var arrName = ['Raman','Ramnaujan','jemes','john','Ronit','Vinayak','virat',];
  var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(

        title: Text('Date Picker',style:TextStyle(fontSize: 20),)
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date',style: TextStyle(fontSize: 18)
            ),
            ElevatedButton(onPressed: () async {
              DateTime? datePicked= await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025),
              );


                if(datePicked!=null){
                  print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
               }

            }, child: Text('Show')
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? pickedTime= await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input
                );
                if(pickedTime!=null){
                  print('Time Selected:${pickedTime.hour}:${pickedTime.minute}');
                }
              },
              child: Text('Select Time'),
            )
          ],
        ),
      )
    );


  }
}
