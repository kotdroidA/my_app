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
var emailText=TextEditingController();
var passText=TextEditingController();

  @override
  Widget build(BuildContext context) {
  var arrName = ['Raman','Ramnaujan','jemes','john','Ronit','Vinayak','virat',];
  var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(

        title: Text('Text Field',style:TextStyle(fontSize: 20),)
      ),
      body:Center(child: Container(
        width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                  ),
                ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                         color: Colors.black26,
                         width: 2,
                      )
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye,color: Colors.orange,),
                    onPressed: (){

                    },
                  ),
                  prefix: Icon(Icons.email,color: Colors.orange),
              ),
              ),
               Container(height: 11,),
              TextField(
                keyboardType: TextInputType.number,
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
              )
              ),
              ElevatedButton(onPressed: (){
              String uEmail=emailText.text.toString();
              String uPass=passText.text;
              print("Email: $uEmail,Pass:$uPass");
              },
                  child: Text('Login'))
            ],
          )
      )
      )

    );


  }
}
