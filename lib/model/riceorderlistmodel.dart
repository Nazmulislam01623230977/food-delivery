class RicemealList {
  String imageurl;
  String name;
  String pieces;
  String lunch;
  String count;

  RicemealList({
    required this.imageurl,
    required this.name,
    required this.lunch,
    required this.pieces,
    required this.count,
  });
}

List<RicemealList> ricemeallist = [
  RicemealList(
      imageurl: 'assets/images/rice.png',
      name: 'Cups',
      pieces: 'Pieces',
      lunch: 'Lunch',
      count: '1'),
  RicemealList(
      imageurl: 'assets/images/rice.png',
      name: 'Cups',
      pieces: 'Pieces',
      lunch: 'Lunch',
      count: '1'),
  RicemealList(
      imageurl: 'assets/images/rice.png',
      name: 'Cups',
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
