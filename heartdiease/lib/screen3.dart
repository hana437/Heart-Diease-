import 'dart:convert';

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
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

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

String age = "1";
String sex = "1";
String cp = "1";
String bp = "11";
String cholesterol = "11";
String fbs = "11";
String ekg = "11";
String thalch = "";
String exerciseangina = "";
String oldpeak = "";
String slop = "";
String ca = "";
String thalium = "";
String _currentValue = 'fczfdsaaw';
Future<void> makePostRequest() async {
  final url = Uri.parse('http://192.168.110.229:5000/predict');
  final headers = {"Content-type": "application/json"};
  final json = '{"title": "Hello", "body": "body text", "userId": 1}';
  final response = await post(
    url,
    headers: headers,
    body: jsonEncode(<String, String>{
      'age': age,
      'sex': sex,
      'cp': cp,
      'trestbps': bp,
      'chol': cholesterol,
      'fbs': fbs,
      'restecg': ekg,
      'thalach': thalch,
      'exang': exerciseangina,
      'oldpeak': oldpeak,
      'slop': slop,
      'ca': ca,
      'thal': thalium
    }),
  );
  print('Status code: ${response.statusCode}');
  print('Body: ');
}

const urlPrefix = "http://192.168.110.229:5000";
Future<void> makeGetRequest() async {
  try {
    final url = Uri.parse("${urlPrefix}");
    Response response = await get(url);
    print('Status code: ${response.statusCode}');
    print('Headers: ${response.headers}');
    print('Body: ${response.body}');
  } catch (e) {
    print("sssssssssssssssssssssssss");
    print(e);
  }
}

Future<Result> createResult(String title) async {
  print("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
  try {
    final response = await http.post(
      Uri.parse('http://localhost:5000/predict'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'age': age,
        'sex': sex,
        'cp': cp,
        'trestbps': bp,
        'chol': cholesterol,
        'fbs': fbs,
        'restecg': ekg,
        'thalach': thalch,
        'exang': exerciseangina,
        'oldpeak': oldpeak,
        'slop': slop,
        'ca': ca,
        'thal': thalium
      }),
    );
    print("kkkkkkkkkkkkkkkkkkkkkk");
    print(response.statusCode);
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(Result.fromJson(jsonDecode(response.body)));
      return Result.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Result.');
    }
  } catch (e) {
    print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    throw Exception(e);
    print(e);
    print(e.toString());

    throw Exception();
  }
}

String st1 = "";

class Result {
  final int id;
  final String title;

  const Result({required this.id, required this.title});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json['id'],
      title: json['title'],
    );
  }
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
                        padding: const EdgeInsets.only(left: 6, right: 16),
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
                                    color: Colors.black,
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
                                margin: EdgeInsets.fromLTRB(6, 0.1, 10, 10),
                                padding:
                                    const EdgeInsets.only(left: 16, right: 14),
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  //Column(
                                  children: [
                                    SizedBox(height: height * 0.04),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: "Thalach"),
                                      onChanged: (value) {
                                        thalium = value;
                                      },
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (value) {
                                        exerciseangina = value.toString();
                                      },
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
                                        decoration: InputDecoration(
                                            labelText: "Max HR"),
                                        onChanged: (value) {
                                          thalch = value;
                                        }),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (value) {
                                        slop = value.toString();
                                      },
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
                                      onChanged: (value) {
                                        ca = value.toString();
                                      },
                                      hint: Text('Number of vessels fluro'),
                                      items: [
                                        DropdownMenuItem(
                                            value: '0', child: Text('0')),
                                        DropdownMenuItem(
                                            value: '1', child: Text('1')),
                                        DropdownMenuItem(
                                            value: '2', child: Text('2')),
                                        DropdownMenuItem(
                                            value: '3', child: Text('3')),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    DropdownButtonFormField(
                                      iconSize: 30,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                      onChanged: (value) {
                                        thalium = value.toString();
                                      },
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
                                          makePostRequest();
                                          // makeGetRequest();
                                          //print();
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyApp()));
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
