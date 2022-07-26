import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:heartdiease/assets/images.jpg';
import 'package:heartdiease/Signup_Widget.dart';
import 'package:heartdiease/Login_widget.dart';

import 'package:heartdiease/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String msg = 'Flutter RaisedButton Example';
  //final formKey = GlobalKey<FormState>(); //key for form
  //String name = "";
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
                width: 750,
                height: 980,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 160, 160),
                  //color: Color.fromARGB(214, 5, 126, 9),
                  border: Border.all(
                    width: 2,
                    color: Color.fromARGB(244, 207, 197, 197),
                  ),
                ),
                //padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    //align at bottom center using Align()
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            child: Column(
                                //All elements are wrapped
                                children: <Widget>[
                              Container(

                                  //margin: const EdgeInsets.only(top: 40.0),
                                  //margin: const EdgeInsets.only(right: 40.0),
                                  child: Row(children: <Widget>[
                                Container(
                                    height: 120.0,
                                    width: 150,
                                    margin: EdgeInsets.fromLTRB(27, 5, 3, 1),
                                    child: Transform.rotate(
                                        angle: 1,
                                        //color: Colors.blue,
                                        //margin: EdgeInsets.all(8),

                                        child: Image(
                                            image: NetworkImage(
                                                'https://as1.ftcdn.net/v2/jpg/02/38/25/52/1000_F_238255210_TorDRPlqrbHsHeenE2QI9z73mibs6M9P.jpg')))),
                                Container(
                                    height: 140.0,
                                    width: 140,
                                    //color: Colors.blue,
                                    transform: Matrix4.rotationZ(0.3),
                                    //transform: Matrix4.rotationZ(0.3),
                                    //margin: EdgeInsets.all(8),S
                                    //alignment: Alignment.topRight,

                                    // alignment: Alignment.spaceBetween,
                                    margin: EdgeInsets.fromLTRB(59, 1, 1, 1),
                                    child: Image(
                                        image: NetworkImage(
                                            'https://cdn.britannica.com/29/123229-050-4EE13335/stethoscopes-rubber-tubing-sounds-patient-ears-physician.jpg'))),
                              ])),
                              Container(
                                  height: 120.0,
                                  width: 175,
                                  //transform: Matrix4.rotationZ(0.3),
                                  //color: Colors.blue,
                                  //margin: EdgeInsets.all(8),
                                  margin: EdgeInsets.fromLTRB(7, 19, 1, 15),
                                  child: Image(
                                      image: NetworkImage(
                                          'https://www.ominecaexpress.com/wp-content/uploads/2019/03/15775191_web1_Doctor_stock-dr.jpg'))),
                              Container(
                                height: 100.0,
                                width: 275,
                                //color: Colors.blue,
                                margin: EdgeInsets.fromLTRB(1, 37, 20, 20),
                                child: Text(
                                  "Let's Get Started",
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                                width: 275,

                                //color: Colors.blue,
                                // margin: EdgeInsets.all(1),
                                margin: EdgeInsets.fromLTRB(1, 20, 0.10, 5),
                                child: Text(
                                  'helps you in heart dieases prediction',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                  height: 46.0,
                                  //width: 75,
                                  margin: EdgeInsets.fromLTRB(76, 37, 70, 10),
                                  color: Colors.blue,
                                  //margin: EdgeInsets.all(8),
                                  // margin: EdgeInsets.fromLTRB(0.1, 20, 0.10, 6),
                                  child: ButtonTheme(
                                    minWidth: 286.0,
                                    height: 40.0,
                                    child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpWidget()));
                                      },
                                      child: Text('Join Now',
                                          style:
                                              TextStyle(color: Colors.green)),
                                    ),
                                  )),
                              Container(
                                height: 28.0,
                                width: 575,

                                //color: Colors.blue,
                                //margin: EdgeInsets.all(8),
                                margin: EdgeInsets.fromLTRB(47, 82, 0.10, 6),
                                child: Text(
                                  'Already have an account?Log in',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ])))
                  ],
                ))));
  }
}
