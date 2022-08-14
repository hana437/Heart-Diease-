import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:heartdiease/main.dart'
//import 'package:heartdiease/login.dart';
import 'package:heartdiease/screen3.dart';
import 'package:heartdiease/screen3.dart';
import 'package:heartdiease/home.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:heartdiease/Login_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: result(),
    );
  }
}

class result extends StatefulWidget {
  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
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
            color: Color.fromARGB(255, 219, 215, 211),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            //align at bottom center using Align()
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Column(
                      //All elements are wrapped

                      children: <Widget>[
                        Container(
                            height: 60.0,
                            //color: Colors.blue,
                            //margin: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(30, 30, 1, 10),
                            padding:
                                const EdgeInsets.only(left: 0, right: 0.0004),

                            //margin: const EdgeInsets.only(top: 40.0),
                            //margin: const EdgeInsets.only(right: 40.0),
                            child: Row(
                                //in this colu
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Patient Data',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      customButton: const Icon(
                                        Icons.list,
                                        size: 46,
                                        //: Colors.red,
                                      ),
                                      customItemsIndexes: const [3],
                                      customItemsHeight: 8,
                                      items: [
                                        ...MenuItems.firstItems.map(
                                          (item) => DropdownMenuItem<MenuItem>(
                                            value: item,
                                            child: MenuItems.buildItem(item),
                                          ),
                                        ),
                                        const DropdownMenuItem<Divider>(
                                            enabled: false, child: Divider()),
                                        ...MenuItems.secondItems.map(
                                          (item) => DropdownMenuItem<MenuItem>(
                                            value: item,
                                            child: MenuItems.buildItem(item),
                                          ),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        MenuItems.onChanged(
                                            context, value as MenuItem);
                                      },
                                      itemHeight: 48,
                                      itemPadding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      dropdownWidth: 160,
                                      dropdownPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 6),
                                      dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.redAccent,
                                      ),
                                      dropdownElevation: 8,
                                      offset: const Offset(0, 8),
                                    ),
                                  ),
                                ])),
                        Container(
                            width: 13.0,
                            color: Colors.red,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(95, 12, 10, 10),
                            child: Container()),
                        Divider(color: Colors.black),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    //color: Colors.red,
                                    //padding: EdgeInsets.only(top: 1.0, bottom: 19.0),
                                    //padding: EdgeInsets.symmetric(vertical: 10.0,),
                                    //padding: EdgeInsets.all(2),
                                    //padding: EdgeInsets.only(top: 2),
                                    margin: EdgeInsets.fromLTRB(15, 40, 10, 10),
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 40),
                                    child: Column(
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        //Column(
                                        children: <Widget>[
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: 100,
                                                width: 200,
                                                //color: Colors.redAccent,
                                                child: Text(
                                                  'Results',
                                                  style: TextStyle(
                                                    fontSize: 30.0,
                                                  ),
                                                ),
                                              )),
                                          Text(
                                            'Normal',
                                            style: TextStyle(
                                              fontSize: 30.0,
                                            ),
                                          ),
                                        ])))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 80),
                            child: Container(
                              //height: 100,
                              //width: 100,
                              //color: Colors.blueAccent,
                              child: ButtonTheme(
                                minWidth: 570.0,
                                height: 45.0,
                                child: RaisedButton(
                                  color: Color.fromARGB(204, 12, 122, 117),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Screen3()));
                                  },
                                  child: Text('Back',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            )),
                      ]),
                ))
          ],
        ),
      )),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(text: 'Home', icon: Icons.home);
  static const share = MenuItem(text: 'Share', icon: Icons.share);
  static const settings = MenuItem(text: 'Settings', icon: Icons.settings);
  static const logout = MenuItem(text: 'Log Out', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        //Do something
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => homepage()));

        break;
      case MenuItems.settings:
        //Do something

        break;
      case MenuItems.share:
        //Do something
        break;
      case MenuItems.logout:
        //Do something
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        break;
    }
  }
}
