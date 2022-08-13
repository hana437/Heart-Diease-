import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:heartdiease/main.dart'
//import 'package:heartdiease/login.dart';
//import 'package:heartdiease/screen3.dart';
import 'package:heartdiease/ll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen2(),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String msg = 'Flutter RaisedButton Example';
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: formKey,
      body: Center(
          child: Container(
              width: 750,
              height: 750,
              decoration: BoxDecoration(
                //color: Color.fromARGB(214, 5, 126, 9),
                border: Border.all(
                  width: 10,
                  color: Color.fromARGB(255, 49, 46, 46),
                ),
              ),
              child: Column(
                //All elements are wrapped

                children: <Widget>[
                  Container(
                      height: 60.0,
                      //color: Colors.blue,
                      //margin: EdgeInsets.all(8),
                      margin: EdgeInsets.fromLTRB(40, 40, 10, 10),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      //margin: const EdgeInsets.only(top: 40.0),
                      //margin: const EdgeInsets.only(right: 40.0),
                      child: Row(
                        //in this column

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Patient Data',
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 40.0,
                          ),
                        ],
                      )),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              //color: Colors.red,
                              //padding: EdgeInsets.only(top: 1.0, bottom: 19.0),
                              //padding: EdgeInsets.symmetric(vertical: 10.0,),
                              //padding: EdgeInsets.all(2),
                              //padding: EdgeInsets.only(top: 2),
                              margin: EdgeInsets.fromLTRB(15, 80, 10, 10),
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                //Column(
                                children: [
                                  SizedBox(height: height * 0.04),
                                  TextFormField(
                                    decoration:
                                        InputDecoration(labelText: "Age"),
                                  ),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration:
                                          InputDecoration(labelText: "Sex")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Chest Pain Type")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Bold Pressure")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Cholestrol")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "FBS over 120")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "EXG results")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Thalium")),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  ButtonTheme(
                                    minWidth: 560.0,
                                    height: 40.0,
                                    child: RaisedButton(
                                      color: Color.fromARGB(204, 12, 122, 117),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CustomButtonTest()));
                                      },
                                      child: Text('Next',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  )
                                ],
                              )))),
                ],
              ))),
    );
  }
}
