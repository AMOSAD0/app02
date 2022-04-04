class Order{
  String? Name;
  String? Price;
  String? id;

  Order({this.Name,this.Price,});

  toJson(){
    return{
      'Name':Name,
      'Price':Price,


    };
  }

  Order.fromJson(Map<String,dynamic>json){
    id=json['id'];
    Name=json['Name'];
    Price=json['Price'];
  }
}