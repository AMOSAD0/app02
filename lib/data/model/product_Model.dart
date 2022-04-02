class Product{
  String? Name;
  String? Price;
  String? id;

  Product({this.Name,this.Price,});

  toJson(){
    return{
      'Name':Name,
      'Price':Price,


    };
  }

  Product.fromJson(Map<String,dynamic>json){
    id=json['id'];
    Name=json['Name'];
    Price=json['Price'];
  }
}