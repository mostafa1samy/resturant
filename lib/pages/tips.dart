import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/accont/regist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';

class Tips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Tipsstat();
  }
}

class Tipsstat extends State<Tips> {
  var myarr = [
    {
      "title": "ابحث عن الماكولات التى تحبها",
      "info": "افضل الاطعمة تجدها فى التطبيق من هنا يمكنك البدء",
      "image": "images/tip1.jpg",
    },
    {
      "title": "ابحث عن الماكولات التى تحبها",
      "info": "افضل الاطعمة تجدها فى التطبيق من هنا يمكنك البدء",
      "image": "images/tip2.jpg",
    },
    {
      "title": "ابحث عن الماكولات التى تحبها",
      "info": "افضل الاطعمة تجدها فى التطبيق من هنا يمكنك البدء",
      "image": "images/tip3.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double myhight = MediaQuery.of(context).size.height / 6;
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(top: 40,right: 30),
              alignment: Alignment.bottomRight,
              child: new GestureDetector(
                child: Text(
                  'دخول',
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                ),
              ),
            ),
            new Container(
              height: myhight * 4,
              child: PageIndicatorContainer(
                length: myarr.length,
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.grey,
                indicatorSelectorColor: Colors.red,
                shape: IndicatorShape.circle(),
                child: PageView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: myarr.length,
                    itemBuilder: (BuildContext Context, i) {
                      return SingleTips(
                        title: myarr[i]['title'],
                        info: myarr[i]['info'],
                        image: myarr[i]['image'],
                      );
                    }),
              ),
              /*
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(''), fit: BoxFit.contain)),*/
            ),
            Expanded(child: new Container(
              //height: myhight,
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: <Widget>[
                  Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return new Register();
                          }));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: new Text("انشاء حساب",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.redAccent),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: new Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.facebookF,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 10,
                                height: 20,
                              ),
                              new Text("ماتبعة باستخدام الفيسبوك",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0)),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[300]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ) ,),

          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;
  SingleTips({this.title, this.info, this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            fit: BoxFit.contain ,
          ),
        )),
        new Padding(
          padding: EdgeInsets.all(5),
          child: new Text(
            title,
            style: TextStyle(
                color: Colors.red, fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ),
        new Padding(
          padding: EdgeInsets.only(bottom: 80.0),
          child: new Text(
            info,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
