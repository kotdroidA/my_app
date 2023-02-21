import 'package:flutter/cupertino.dart';
main(){
  var listNo = [10,20,30,40];
  listNo.add(50);

  var names = [];
  names.add("Ram");
  names.add("Anuj");
  names.add("Annu");

 // names.addAll(listNo);
 // names.insert(2, "Annupriya");
  // names.insertAll(3, listNo);
  print("$names");

 // names[2]="Rameez";
 // listNo.replaceRange(0, 4, [1,2,3,4]);
 // listNo.removeRange(0, 3);

  print("Length:${listNo.length}");
  print("Reversed:${listNo.reversed}");
  print("First:${listNo.first}");
  print("Last:${listNo.last}");
  print("Is Empty:${listNo.isEmpty}");
}