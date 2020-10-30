import 'package:flutter/material.dart';
import 'package:resturant/pages/tips.dart';

class getstaet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new getstartstat();
  }
}

class getstartstat extends State<getstaet> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double myhight = MediaQuery.of(context).size.height / 3;
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              height: myhight*2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/tip1.jpg'), fit: BoxFit.cover)),
            ),

            new Container(
              height: myhight,
              padding: EdgeInsets.all(20.0 ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow:[ BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,offset: Offset(0, 3))],
              borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20))),
              child: ListView(
                children: <Widget>[
                  Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('اشهى الماوتات',style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text('افضل الماكولات تجدونها فى مطعمنا',style: TextStyle(color: Colors.white,fontSize: 16.0),textDirection: TextDirection.rtl),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      GestureDetector(onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder:(context){

                         return Tips();
                       } ));
                      },
                      child: Container(child: Text('ابدا من هنا',style: TextStyle(fontSize: 20.0)),
                        padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 5.0,bottom: 5.0),

                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.0)),),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
