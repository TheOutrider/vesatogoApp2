
import 'package:vesatogo_part_two/models/main_model.dart';

class Setup{

  List<MainModel> getDataList() {
    List<MainModel> dataList = new List<MainModel>();

    MainModel model;
    Item item;

    // 1
    model = new MainModel();
    List<Item> itemList1 = new List<Item>();
    model.name = "Trips";
    model.date = "22 Oct 2020 - 23 Oct 2020";
    model.image = "vehicle";

      item = new Item();
      item.itemName = "Completed";
      item.itemQty = 3;
      itemList1.add(item);

      item = new Item();
      item.itemName = "Incomplete";
      item.itemQty = 1;
      itemList1.add(item);

      item = new Item();
      item.itemName = "Upcomming";
      item.itemQty = 5;
      itemList1.add(item);

      item = new Item();
      item.itemName = "Unsettled";
      item.itemQty = 5;
      itemList1.add(item);

    model.itemList = itemList1;
    dataList.add(model);


    // 2
    model = new MainModel();
    List<Item> itemList2 = new List<Item>();
    itemList2.clear();
    model.name = "Stock Keeping Units";
    model.date = "22 Oct 2020 - 23 Oct 2020";
    model.image = "market";

      item = new Item();
      item.itemName = "Loaded";
      item.itemQty = 1180;
      itemList2.add(item);

      item = new Item();
      item.itemName = "To Vendor";
      item.itemQty = 1280;
      itemList2.add(item);

      item = new Item();
      item.itemName = "From Vendor";
      item.itemQty = 1080;
      itemList2.add(item);

      item = new Item();
      item.itemName = "Unsettled";
      item.itemQty = 10180;
      itemList2.add(item);

      model.itemList = itemList2;
    dataList.add(model);

//   3
    model = new MainModel();
    List<Item> itemList3 = new List<Item>();
    itemList3.clear();
    model.name = "Stock Information";
    model.date = "22 Oct 2020 - 23 Oct 2020";
    model.image = "fruit";

      item = new Item();
      item.itemName = "Total Stock";
      item.itemQty = 150;
      itemList3.add(item);

      item = new Item();
      item.itemName = "Returned by Vendor";
      item.itemQty = 12000;
      itemList3.add(item);

      item = new Item();
      item.itemName = "Unsettled";
      item.itemQty = 11080;
      itemList3.add(item);

      model.itemList = itemList3;
    dataList.add(model);



//    4
    model = new MainModel();
    List<Item> itemList = new List<Item>();
    itemList.clear();
    model.name = "Payments";
    model.date = "22 Oct 2020 - 23 Oct 2020";
    model.image = "stock";

      item = new Item();
      item.itemName = "Actual Order";
      item.itemQty = 11080;
      itemList.add(item);

      item = new Item();
      item.itemName = "Collected";
      item.itemQty = 11080;
      itemList.add(item);

      item = new Item();
      item.itemName = "Unsettled";
      item.itemQty = 11080;
      itemList.add(item);


      model.itemList = itemList;
    dataList.add(model);

    return dataList;
  }

}
