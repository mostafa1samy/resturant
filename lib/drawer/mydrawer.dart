import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new drastat();
  }
}

class drastat extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: Drawer(
        child:Directionality(
        textDirection: TextDirection.rtl ,
         child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "mostafa",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              accountEmail: Text("samy1@gmail.com",style: TextStyle(fontSize: 16.0,color: Colors.grey)),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[100]),
            ),
            Container(padding: EdgeInsets.only(right: 10.0,left: 10.0),
            child: InkWell(
                onTap: () {},
                child:Column(children: <Widget>[

                  ListTile(
                    title: Text("الصفحة الرئسية",style:TextStyle(fontSize: 20.0, color: Colors.black)),
                    leading: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                  Divider(color: Colors.grey[500],)

                ],)
            ),),
            Container(padding: EdgeInsets.only(right: 10.0,left: 10.0),
              child: InkWell(
                  onTap: () {},
                  child:Column(children: <Widget>[

                    ListTile(
                      title: Text("حسابى",style:TextStyle(fontSize: 20.0, color: Colors.black)),
                      leading: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18.0,
                      ),
                    ),
                    Divider(color: Colors.grey[500],)

                  ],)
              ),),
            Container(padding: EdgeInsets.only(right: 10.0,left: 10.0),
              child: InkWell(
                  onTap: () {},
                  child:Column(children: <Widget>[

                    ListTile(
                      title: Text("مفضلاتى",style:TextStyle(fontSize: 20.0, color: Colors.black)),
                      leading: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18.0,
                      ),
                    ),
                    Divider(color: Colors.grey[500],)

                  ],)
              ),),


          ],
        ),
      ),
    )
    );
  }
}
