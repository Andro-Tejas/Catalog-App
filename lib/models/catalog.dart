class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
  id : "tejas011",
  name:"Iphone 13 pro max",
  desc : "Apple Iphone 13th generation",
  price : 130000,
  color : "#33505a",
  image : "https://m.media-amazon.com/images/I/712ALflYTYL._SX679_.jpg",
  )
];