import 'dart:io';
import 'dart:core';
import 'data.dart';

class Operation {
  int? id;
  double readTotal = 0.0;
  Map<int, Data> item = {};
  var now = DateTime.now();
     
  void add(){
  stdout.write("> ID       : ");
  id =int.parse(stdin.readLineSync()!);
  
  if(item.containsKey(id)){
    print("ID already used !");
    
  }else{
  stdout.write("> Name     : ");
  String name = stdin.readLineSync()!;
  stdout.write("> Quantity : ");
  int qty = int.parse(stdin.readLineSync()!);
  stdout.write("> Price    : ");
  double price = double.parse(stdin.readLineSync()!);

  double itmprc = price * qty;
  Data addItem = Data(id!, qty, name, price, itmprc);
  item[id!] = addItem;
  print('''\n
<<item added>>
  \n''');
  }
}

  void read(){

    print("Item List");
    if (item.isNotEmpty) {
          item.forEach((id, read) { 
      readTotal += read.totalItmPrc;
      stdout.writeln('''
_____________________________________________________________
id:${read.id}  | name:${read.name}  qty:${read.qty}  prc:${read.price}  Item Total : ${read.totalItmPrc}''');
    });
print('''
------------------------------------------------------------:
                                         Total =  $readTotal
------------------------------------------------------------:
The Data result is shown as above
This data is printed precisely at [$now]

''');
      }else{
    print('''
_________________________________________________________________________________________
id:0   |            Theres is no Item in this List, try putting one item please
=========================================================================================
''');
      } 
    }
    
  void update(){
    var update = Data(0, 0, "", 0, 0);

    stdout.write("Update item by Id : ");
    id = int.parse(stdin.readLineSync()!);

    if(item.isEmpty){
      print("\nitem not found\n");
    }else{
  stdout.write(">    New Name   : ");
  update.name = stdin.readLineSync()!;
  stdout.write(">  New Quantity : ");
  update.qty = int.parse(stdin.readLineSync()!);
  stdout.write(">   New Price   : ");
  update.price = double.parse(stdin.readLineSync()!);

  double newItmPrc = update.price * update.qty;
  Data newItem = Data(id!, update.qty, update.name, update.price, newItmPrc);
  item[id!] = newItem;
  print('''\n
<<item updated>>
  \n''');
    }
  }

  void delete(){
    stdout.write("Delete Item by ID : ");
    id = int.parse(stdin.readLineSync()!);

    if (item.isEmpty) {
      print("there is no such item !");
    }else{
    item.remove(id);
    print("item with $id is removed");
    }
  }

  void search(){
    stdout.write("Search Item by ID : ");
    id =int.parse( stdin.readLineSync()!);
    
    if(item.containsKey(id)){
    Data search = item[id]!;

          stdout.writeln('''
_____________________________________________________________
id:${search.id}  | name:${search.name}  qty:${search.qty}  prc:${search.price}  Item Total : ${search.totalItmPrc}
=============================================================''');
    }else{
    print('''
_________________________________________________________________________________________
id:0    |                 Oops ! no item can't be found :(
=========================================================================================
''');      
    }
  }

}
