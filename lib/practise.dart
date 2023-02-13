
import 'dart:io';

void main(){

  print('Welcome to Dart!');
  stdout.write('Enter your name :');
  var nameA = stdin.readLineSync();
  print("Welcome, $nameA");
  Human(); // Creating an Class object

  //Declaration of variable
    int a;

  //Assign
   a=5; //initialization
   print(a);
   BigInt longValue;
   longValue = BigInt.parse('5467666746475675756575657756565754344455657565');
   num percentage=99.6;
   bool isLogin=false;
   print(longValue);

  //inline declaration
   String name ="Raman";
   name ="Ramanujan";


}

class Human{

Human();

}