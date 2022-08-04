class MornigmealList {
  String imageurl;
  String name;
  String pieces;
  String lunch;
  String count;

  MornigmealList({
    required this.imageurl,
    required this.name,
    required this.lunch,
    required this.pieces,
    required this.count,
  });
}

List<MornigmealList> mornigmeallist = [
  MornigmealList(
      imageurl: 'assets/images/image4.png',
      name: 'Puck cheese',
      pieces: 'Dairy,Riffa ',
      lunch: ' 35',
      count: '1'),
  MornigmealList(
      imageurl: 'assets/images/image3.png',
      name: 'Spacy fresh crab',
      pieces: 'Waroenk kita',
      lunch: ' 40',
      count: '1'),
  MornigmealList(
      imageurl: 'assets/images/image2.png',
      name: 'Spacy fresh crab',
      pieces: 'Chicken Leg',
      lunch: ' 35',
      count: '1'),
  MornigmealList(
      imageurl: 'assets/images/image5.png',
      name: 'Spacy fresh crab',
      pieces: 'Chicken Leg',
      lunch: ' 2.500 BD',
      count: '1'),
  // OrdermealList(
  //     imageurl: 'assets/images/meal1.png',
  //     name: 'RIFFA',
  //     pieces: 'Pieces',
  //     lunch: 'Lunch',
  //     count: '1'),
];
