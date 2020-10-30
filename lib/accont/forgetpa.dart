import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/accont/regist.dart';

class Forget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new forstat();
  }
}

class forstat extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
       child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Form(
                  child: ListView(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.all(2.0),
                    child: new Text(
                      "نسيت كلمة المرور",
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: new Text(
                      "قم بادخال الايميل الصحيح ليتم ارسالكتمة المرور اليك",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                  ),

                  new Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    // margin: EdgeInsets.all(11.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "البريد الاكترونى",
                          border: InputBorder.none),
                      keyboardType: TextInputType.emailAddress,
                      validator: (String value) {
                        if (value.isEmpty ||
                            value.indexOf('.') == -1 ||
                            value.indexOf('@') == -1) {
                          return "الرجاء ادخال لبريد الاكترونى ";
                        }
                      },
                    ),
                  ),


                  MaterialButton(
                      onPressed: () {},
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        child: new Text(
                          "دارسا",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10.0, top: 30),
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                      )),

                ],
              )),
            ),

          ],
        ),
      ),
    )
    ) ;
  }
}
