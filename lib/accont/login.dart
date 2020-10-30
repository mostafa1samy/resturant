import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/accont/regist.dart';
import 'package:resturant/accont/forgetpa.dart';
import 'package:resturant/pages/home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new logstat();
  }
}

class logstat extends State<Login> {
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
                      "انشاء حسابسجل الدحول الى حسابك ا",
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: new Text(
                      "من هنا",
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
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
                  new Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    // margin: EdgeInsets.all(11.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child:Row(
                      children: <Widget>[
                        Expanded(child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "كلمة المرور", border: InputBorder.none),
                          obscureText: true,
                          validator: (String value) {
                            if (value.isEmpty || value.length < 6) {
                              return "الرجاء ادخال كلمة المرور";
                            }
                          },
                        ),),
                        GestureDetector(child: Text('نسيت ؟',style: TextStyle(color: Colors.red),),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>new Forget()));
                        },)
                      ],
                    )
                  ),

                  MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>new Home()));
                      },
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        child: new Text(
                          "دحول",
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
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "اذا ليس لديك حساب سجل الدحول من هنا ",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    child: Text("تسجيل جديد",
                        style: TextStyle(fontSize: 16, color: Colors.red)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>new Register()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
    ) ;
  }
}
