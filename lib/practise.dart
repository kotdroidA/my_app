

void main(){


  print('Welcome to Dart!');

var myC=myClass();

  print(myC.Add(4, 5));

  print(myC.Add(20,56));

myC.printName("vscode");// function calling
  //
  //
  myC.printName("Arjun");
  //
  //
  myC.printName("Kavya");
  
}


class myClass{

  void printName(String name){//Declaration
    print(name);//Definition

  }

  int Add(int no1, int no2){
    int sum = no1+no2;

    return sum;
  }
}

