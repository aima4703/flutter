import 'package:choreit/AppConstants.dart';
import 'package:choreit/CustomWidgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isTileSelected = false.obs;
    late Listenable animation;

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: AppConstants.Primary,
        title: Text(
          "Family",
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
        actions: [
          isTileSelected.value
              ? IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    isTileSelected.value = !isTileSelected.value;
                  },
                )
              : SizedBox(
                  height: 40,
                ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(28.0),
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ],
                    ),
                    child: ListTile(
                      leading: Image.asset("./assets/imgs/kid1.png"),
                      title: Text(
                        'Kid 1',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ],
                    ),
                    child: ListTile(
                      leading: Image.asset("./assets/imgs/kid1.png"),
                      title: Text(
                        'Kid 2',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    
                  ),
                ],
              ),
            ),
          ],
        ), 
      ),
    );
  }
}
