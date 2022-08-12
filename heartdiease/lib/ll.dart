import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:heartdiease/main.dart'
//import 'package:heartdiease/login.dart';
//import 'package:heartdiease/screen3.dart';
//import 'package:heartdiease/home.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomButtonTest(),
    );
  }
}

class CustomButtonTest extends StatefulWidget {
  //const CustomButtonTest({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  String name = "";
  @override
  State<CustomButtonTest> createState() => _CustomButtonTestState();
}

class _CustomButtonTestState extends State<CustomButtonTest> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //key:formKey,
        body: Center(
            child: Container(
                width: 750,
                height: 750,
                decoration: BoxDecoration(
                  //color: Color.fromARGB(214, 5, 126, 9),
                  border: Border.all(
                    width: 10,
                    color: Color.fromARGB(244, 207, 197, 197),
                  ),
                ),
                child: Column(
                    //All elements are wrapped

                    children: <Widget>[
                      Container(
                          height: 60.0,
                          //color: Colors.blue,
                          //margin: EdgeInsets.all(8),
                          margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                          padding: const EdgeInsets.only(left: 10, right: 10),
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
                                  margin: EdgeInsets.fromLTRB(0.001, 4, 4, 10),
                                  padding: const EdgeInsets.only(
                                      left: 40, right: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    //Column(
                                    children: [
                                      //SizedBox(height: height * 0.04),
                                      TextFormField(
                                        decoration:
                                            InputDecoration(labelText: "Age"),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      TextFormField(
                                          decoration: InputDecoration(
                                              labelText: "Sex")),
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
                                          //height: height * 0.05,
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
                                                        CustomButtonTest()));
                                          },
                                          child: Text('Next',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      )
                                    ],
                                  )))),
                    ]))));
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
        break;
      case MenuItems.settings:
        //Do something
        break;
      case MenuItems.share:
        //Do something
        break;
      case MenuItems.logout:
        //Do something
        break;
    }
  }
}
