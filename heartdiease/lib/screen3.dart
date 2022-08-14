import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:heartdiease/main.dart'
import 'package:heartdiease/Login_Widget.dart';
import 'package:heartdiease/result.dart';
//import 'package:heartdiease/home.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:heartdiease/screen3.dart';
import 'package:heartdiease/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen3(),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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

                //backgroundColor: Colors.grey,
                child: Column(
                  //All elements are wrapped

                  children: <Widget>[
                    Container(
                        height: 60.0,
                        //color: Colors.blue,
                        //margin: EdgeInsets.all(8),
                        margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
                        padding: const EdgeInsets.only(left: 1, right: 10),
                        //margin: const EdgeInsets.only(top: 40.0),
                        //margin: const EdgeInsets.only(right: 40.0),
                        child: Row(
                            //in this colu
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      const EdgeInsets.symmetric(vertical: 6),
                                  dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.redAccent,
                                  ),
                                  dropdownElevation: 8,
                                  offset: const Offset(0, 8),
                                ),
                              ),
                            ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                //color: Colors.red,
                                //padding: EdgeInsets.only(top: 1.0, bottom: 19.0),
                                //padding: EdgeInsets.symmetric(vertical: 10.0,),
                                //padding: EdgeInsets.all(2),
                                //padding: EdgeInsets.only(top: 2),
                                margin: EdgeInsets.fromLTRB(5, 0.1, 10, 10),
                                padding:
                                    const EdgeInsets.only(left: 30, right: 40),
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  //Column(
                                  children: [
                                    SizedBox(height: height * 0.04),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "ST depression"),
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (s) {},
                                      hint: Text('Exercise Angina'),
                                      items: [
                                        DropdownMenuItem(
                                            value: '1',
                                            child: Text('Exercise Angina')),
                                        DropdownMenuItem(
                                            value: '2', child: Text('Yes')),
                                        DropdownMenuItem(
                                            value: '3', child: Text('No')),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: "Max HR"),
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (s) {},
                                      hint: Text('Slop of ST'),
                                      items: [
                                        DropdownMenuItem(
                                            value: '1',
                                            child: Text('Slop of ST')),
                                        DropdownMenuItem(
                                            value: '2',
                                            child: Text('Upsloping')),
                                        DropdownMenuItem(
                                            value: '3', child: Text('Flot')),
                                        DropdownMenuItem(
                                            value: '4',
                                            child: Text('Downsloping')),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (s) {},
                                      hint: Text('Number of vessels fluro'),
                                      items: [
                                        DropdownMenuItem(
                                            value: '1',
                                            child: Text(
                                                'Number of vessels fluro')),
                                        DropdownMenuItem(
                                            value: '2', child: Text('0')),
                                        DropdownMenuItem(
                                            value: '3', child: Text('1')),
                                        DropdownMenuItem(
                                            value: '4', child: Text('2')),
                                        DropdownMenuItem(
                                            value: '4', child: Text('3')),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (s) {},
                                      hint: Text('Thalassesmia'),
                                      items: [
                                        DropdownMenuItem(
                                            value: '1',
                                            child: Text('Thalassesmia')),
                                        DropdownMenuItem(
                                            value: '2', child: Text('Normal')),
                                        DropdownMenuItem(
                                            value: '3',
                                            child: Text('Fixed Defect')),
                                        DropdownMenuItem(
                                            value: '4',
                                            child: Text('Reversable Defect')),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    ButtonTheme(
                                      minWidth: 560.0,
                                      height: 40.0,
                                      child: RaisedButton(
                                        color:
                                            Color.fromARGB(204, 12, 122, 117),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      result()));
                                        },
                                        child: Text('Predict',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    )
                                  ],
                                )))),
                  ],
                ))));
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
