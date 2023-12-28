import 'dart:io';
// import 'package:uas/data.dart';
import 'package:uas/operation.dart';

void main() {
  var operation = Operation();
  String condition;

print('''
\n\nThis is Item management program v1.0
made by : @Yosa/Ucup
=========================================
Note : "this program is not perfectly made.
       The program only used for [CRUD] demo
       with Map, Object, and Setter-Getter".''');
while(true){
  print('''\n
_______________________________________
_______________________________________]
               <[MENU]>                |
---------------------------------------|
1. Create                              |
2. Print                               |
3. Update                              |
4. Search                              |
5. Delete                              |
=======================================\'''');
  stdout.write(">> Menu choose 1-5 : ");
  int choice = int.parse(stdin.readLineSync()!); 
  print('');
  switch(choice){

  case 1 :
    while(true){
    operation.add();
    stdout.write("add more (y/n) ? : ");
    condition = stdin.readLineSync()!; 
    if (condition != 'y') {
      break;
    }
  }

  case 2 :
  operation.read();
  break;
  
  case 3 :
  operation.update();
  break;
  
  case 4 :
  operation.search();
  break;

  case 5 :
  operation.delete();
  break;

  case 6 :
  operation.search();
  break;

  default:
  print("Invalid Menu");
  break;
  }
 }
}