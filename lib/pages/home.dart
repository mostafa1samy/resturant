import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/drawer/mydrawer.dart';
import 'package:resturant/pages/productdetails.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new homstata();
  }
}

class homstata extends State<Home> {
  GlobalKey <ScaffoldState> _keydrawer=GlobalKey<ScaffoldState>();
  var myarr = [
    {
      "cat_id": "1",
      "cat_name": "category1",
      "cat_image": "images/cat/cat1.jpg"
    },
    {
      "cat_id": "2",
      "cat_name": "category2",
      "cat_image": "images/cat/cat2.jpg"
    },
    {
      "cat_id": "3",
      "cat_name": "category3",
      "cat_image": "images/cat/cat3.jpg"
    },
    {
      "cat_id": "4",
      "cat_name": "category4",
      "cat_image": "images/cat/cat4.jpg"
    },
    {"cat_id": "5", "cat_name": "category5", "cat_image": "images/cat/cat5.jpg"}
  ];
  var myarr_pr = [
    {
      "pr_id": "1",
      "pr_name": "product1",
      "pr_desc": "product1product1product1product1",
      "pr_image": "images/pr/pr1.jpg"
    },
    {
      "pr_id": "2",
      "pr_name": "product2",
      "pr_desc": "product2product2product2product2",
      "pr_image": "images/pr/pr2.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: Scaffold(
          key: _keydrawer,
           endDrawer: Mydrawer(),

      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: <Widget>[
            Container(
              child: new Text(
                'توصيل الطلب الى',
                style: TextStyle(color: Colors.grey),
              ),
              margin: EdgeInsets.only(top: 35.0),
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 15.0),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'موقع الزبون',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  padding: EdgeInsets.only(right: 15.0),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red,
                    ),
                    onPressed: () {})
              ],
            ),
            new Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(child: new Icon(
                    Icons.menu,
                    color: Colors.red,
                    size: 40.0,
                  ),
                    onTap: (){
                    _keydrawer.currentState.openEndDrawer();
                    },
                  ),
                  Expanded(
                    child: new Container(
                      padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "بحث",
                            suffixIcon: Icon(Icons.search),
                            border: InputBorder.none),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: ListView.builder(
                  itemCount: myarr.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleCat(
                      cat_id: myarr[index]["c at_id"],
                      cat_name: myarr[index]["cat_name"],
                      cat_image: myarr[index]["cat_image"],
                    );
                  }),
            ),
            new Container(
              width: MediaQuery.of(context).size.width,
              height: 390.0,
              child: ListView.builder(
                  itemCount: myarr_pr.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Singlepr(
                      pr_id: myarr_pr[index]["pr_id"],
                      pr_name: myarr_pr[index]["pr_name"],
                      pr_desc: myarr_pr[index]["pr_desc"],
                      pr_image: myarr_pr[index]["pr_image"],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active,size: 25.0,), title: Text("الاشعارات")),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer,size: 25.0,), title: Text("العروض")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 25.0,), title: Text("احسابى"))
        ],
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
      ),
    ));
  }
}

class SingleCat extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;
  SingleCat({this.cat_id, this.cat_name, this.cat_image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10.0),
            child: Image.asset(cat_image),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.red[100]),
          )),
          Text(
            cat_name,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Singlepr extends StatelessWidget {
  final String pr_id;
  final String pr_name;
  final String pr_desc;
  final String pr_image;
  Singlepr({this.pr_id, this.pr_name, this.pr_desc, this.pr_image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        // alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(child: new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: new Text(""),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pr_image))),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
            },),
            new Text(
              pr_name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            new Text(
              pr_desc,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ));
  }
}
