import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:heartdiease/assets/images.jpg';
//import 'package:heartdiease/login.dart';
//import 'package:heartdiease/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
                height: 750,
                decoration: BoxDecoration(
                  color: Color.fromARGB(246, 4, 179, 167),
                  //color: Color.fromARGB(214, 5, 126, 9),
                  border: Border.all(
                    width: 10,
                    color: Color.fromARGB(244, 207, 197, 197),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Stack(children: [
                  //align at bottom center using Align()
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          child: Column(
                              //All elements are wrapped
                              children: <Widget>[
                            Container(
                                height: 120.0,
                                width: 185,
                                transform: Matrix4.rotationZ(0.1),
                                color: Colors.blue,
                                //margin: EdgeInsets.all(8),
                                margin: EdgeInsets.fromLTRB(6, 40, 10, 10),
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0.0004),

                                //margin: const EdgeInsets.only(top: 40.0),
                                //margin: const EdgeInsets.only(right: 40.0),
                                child: Row(
                                    //in this column

                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                          child: Image(
                                              image: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3wDhXfrc95vVVgw_MGzEhJS-s_-Oe7DmtXjeR31_JTjamk-zVUsHwKJvJitqH9MOcE_0&usqp=CAU'))),
                                      Expanded(
                                          child: SingleChildScrollView(
                                        child: Container(
                                            child: Image(
                                                image: NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3wDhXfrc95vVVgw_MGzEhJS-s_-Oe7DmtXjeR31_JTjamk-zVUsHwKJvJitqH9MOcE_0&usqp=CAU'))),
                                      )),
                                    ]))
                          ])))
                ]))));
  }
}
