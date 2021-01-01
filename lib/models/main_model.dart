class MainModel {
  String image;
  String date, name;
  List<Item> itemList;

  MainModel({this.image, this.date, this.name, this.itemList});
}

class Item{
  String itemName;
  int itemQty;

  Item({this.itemName, this.itemQty});
}