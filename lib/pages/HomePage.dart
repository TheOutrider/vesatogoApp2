import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vesatogo_part_two/models/main_model.dart';
import 'package:vesatogo_part_two/pages/setups.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Setup setup = new Setup();
  List<MainModel> dataList = new List<MainModel>();
  String color ="green";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataList = setup.getDataList();
    print(dataList.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home", style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.black54),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            ListTile(title: Text("DashBoard"), leading: Icon(Icons.dashboard_rounded),),
            ListTile(title: Text("Profile"), leading: Icon(Icons.person_outline),),
            ListTile(title: Text("Logout"), leading: Icon(Icons.logout),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: dataList.length,
                itemBuilder: (context, index){
                  final item = dataList[index];
                  return Card(
                    color: Colors.green[100],
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(children: [
                          Image.asset("assets/images/${item.image}.png" , height: 55, width: 65, fit: BoxFit.fill,),
                          SizedBox(width: 16),
                          Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.date, style: TextStyle(color: Colors.red[300], fontWeight: FontWeight.w600, fontSize: 18),),
                              SizedBox(height: 10,),
                              Text(item.name, style: TextStyle(color: Colors.blue[300], fontWeight: FontWeight.w600, fontSize: 20)),
                            ],
                          )
                        ],),
                      ),

                      SizedBox(height: 8),

                      Container( height: 70, width: MediaQuery.of(context).size.width ,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.grey[200],
                              Colors.grey[300],
                            ]
                          ),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(4), bottomLeft: Radius.circular(4))
                        ),

                        alignment: Alignment.center,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: item.itemList.length,
                          itemBuilder: (context, index){
                            final subitem = item.itemList[index];
                            return Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(subitem.itemQty.toString(), style: TextStyle(fontSize: 18, color: Colors.orange[300], fontWeight: FontWeight.w600)),
                                  SizedBox(height: 5),
                                  Text(subitem.itemName, style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],),
                  );
                },

              ),

              SizedBox(height: 10,),
              Card(child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/vehicle.png', height: 50, width: 50, fit: BoxFit.fill,),
                        SizedBox(height: 10,),
                        Image.asset('assets/images/fruit.png', height: 50, width: 50, fit: BoxFit.fill,),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Image.asset('assets/images/market.png', height: 50, width: 50, fit: BoxFit.fill,),
                        SizedBox(height: 10,),
                        Image.asset('assets/images/stock.png', height: 50, width: 50, fit: BoxFit.fill,),
                      ],
                    ),
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("24th Jan '20", style: TextStyle(fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("All in Trip", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ,color: Colors.green[400]),),
                      ],
                    )
                  ],
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
