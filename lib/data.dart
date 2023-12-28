class Data {
  int _id = 1;
  int  _qty = 0;
  String _name = "null";
  double _price = 0.0;
  double totalItmPrc = 0.0;

  //Data(id, qty, name, price, ttlprc)
  Data(this._id,this._qty ,this._name, this._price, this.totalItmPrc);

  set id (int id) => _id = id;    
  int get id => _id;

  set name (String name) => _name = name;
  String get name => _name;

  set qty (int qty) => _qty = qty;
  int get qty => _qty;

  set price (double price) => _price = price; 
  double get price => _price;


}