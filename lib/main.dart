import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:resturant/conf.dart';
import 'package:resturant/tipess/getstart.dart';

void main() => runApp(new MaterialApp(debugShowCheckedModeBanner: false,
  home: splashscreen(),
));

class splashscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new spl();
  }

}
class spl extends State<splashscreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new getstaet(),
      title: new Text('مرحبا بكم فى مطعمنا',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),
      ),
      /*
      image: new Image.network('https://flutter.io/images/catalog-widget-placeholder.png'),*/

      backgroundColor: primarycolor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Resturant"),
      loaderColor: Colors.white,
    );
  }

}
