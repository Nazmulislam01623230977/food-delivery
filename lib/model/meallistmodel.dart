class ModelmealList {
  String imageurl;
  String name;

  ModelmealList({
    required this.imageurl,
    required this.name,
  });
}

List<ModelmealList> meallist = [
  ModelmealList(
    imageurl: 'assets/images/meal1.png',
    name: 'RIFFA',
  ),
  ModelmealList(
    imageurl: 'assets/images/meal2.png',
    name: 'SADIQ',
  ),
  ModelmealList(
    imageurl: 'assets/images/meal3.png',
    name: 'AL-OSRA',
  ),
  ModelmealList(
    imageurl: 'assets/images/meal4.png',
    name: 'VEGTABLE',
  ),
  // ModelmealList(
  //   imageurl: 'assets/images/Snacks.png',
  //   name: 'Snacks',
  // ),
];
