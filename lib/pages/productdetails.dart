import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/pages/producshoping.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new detststat();
  }
}

class detststat extends State<Details> {
  Widget HeaderBuilder() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Container(
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                ),
                onPressed: () {Navigator.of(context).pop(); }),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ],
                borderRadius: BorderRadius.circular(15.0)),
          ),
          Expanded(child: new Text("")),
          Container(
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>new Shoping()));

                }),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ],
                borderRadius: BorderRadius.circular(15.0)),
          )
        ],
      ),
    );
  }

  Widget imageproduct() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[100],
                spreadRadius: 1,
                blurRadius: 0,
                offset: Offset(0, 1))
          ],
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40.0) ,bottomRight:Radius.circular(40.0) ,)),child: Column(
      children: <Widget>[
        Image.asset("images/pr/pr1.jpg",fit: BoxFit.cover,),
        Padding(padding: EdgeInsets.only(top: 30.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: IconButton(
          icon: FaIcon(
          FontAwesomeIcons.minus,

          color: Colors.white,
        ),
                  onPressed: () {}),
              decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15.0)),
            ),
             Padding(padding: EdgeInsets.all(10.0),child: new Text("1",style: TextStyle(color: Colors.black,fontSize: 20.0),),),
            Container(
              child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.plus,

                    color: Colors.white,
                  ),
                  onPressed: () {}),
              decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15.0)),
            )
          ],
        ),
      ],
    ),);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      body:Directionality(
       textDirection: TextDirection.rtl,
       child:  ListView(
        children: <Widget>[HeaderBuilder()
        ,
        imageproduct(),
        Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          new Text("سمك مشوى",style: TextStyle(fontSize: 25.0),),
              Padding(padding: EdgeInsets.only(bottom:18.0)),
              Row(children: <Widget>[
                new Icon(Icons.favorite,color: Colors.red),

                new Text("5",style: TextStyle(fontSize: 15.0)),
                Expanded(child: new Text("")),
                new Icon(Icons.star,color: Colors.yellow,),
                new Text("5 review",style: TextStyle(fontSize: 15.0),),
              ],),
              Padding(padding: EdgeInsets.only(bottom:10.0)),
              new Text("سمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىمشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىمشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوى",style: TextStyle(fontSize: 15.0,color: Colors.grey),)
        ],),)],
      ),
    ),
      bottomNavigationBar: new Container(
        child: Row(
          children: <Widget>[
            new Text("150",style: TextStyle(fontSize: 30.0,color:Colors.white,fontWeight: FontWeight.bold),),
            Expanded(child: new Text("")),
            Container(decoration: BoxDecoration(

                color: Colors.red[200],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ],
                borderRadius: BorderRadius.circular(40.0)),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: Text("اضافة الى السلة",style: TextStyle(color: Colors.white,fontSize: 25.0),),),
            Container(child: Icon(Icons.shopping_basket,color: Colors.white,),)
          ],
        ),
        padding: EdgeInsets.only(left:50.0,right: 30.0,bottom: 5.2),
        height: 70,
          decoration: BoxDecoration(

              color: Colors.red[300],
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[100],
                    spreadRadius: 7,
                    blurRadius: 4,
                    offset: Offset(0, 3))
              ],
              borderRadius: BorderRadius.circular(40.0)),

      ),
    );
  }
}
