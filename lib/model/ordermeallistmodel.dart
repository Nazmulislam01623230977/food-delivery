class OrdermealList {
  String imageurl;
  String name;
  String pieces;
  String lunch;
  String count;

  OrdermealList({
    required this.imageurl,
    required this.name,
    required this.lunch,
    required this.pieces,
    required this.count,
  });
}

List<OrdermealList> ordermeallist = [
  OrdermealList(
      imageurl: 'assets/images/Menu1.png',
      name: 'Chicken Legs ',
      pieces: 'Pieces',
      lunch: 'Lunch',
      count: '1'),
  OrdermealList(
      imageurl: 'assets/images/menu2.png',
      name: 'Chicken Breast',
      pieces: 'Pieces',
      lunch: 'Lunch',
      count: '1'),
  OrdermealList(
      imageurl: 'assets/images/menu3.png',
      name: 'Chicken Thigh',
      pieces: 'Pieces',
      lunch: 'Lunch',
      count: '1'),
  // OrdermealList(
  //     imageurl: 'assets/images/meal1.png',
  //     name: 'RIFFA',
  //     pieces: 'Pieces',
  //     lunch: 'Lunch',
  //     count: '1'),
];
