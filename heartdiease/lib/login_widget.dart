import 'package:flutter/material.dart';
import 'package:heartdiease/signup_widget.dart';
import 'package:heartdiease/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Widget for input

class LoginWidget extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final GlobalKey<ScaffoldState> _mainScaffoldKey =
      new GlobalKey<ScaffoldState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: 900,
        margin: const EdgeInsets.only(left: 20, right: 10),
        //color: Colors.blue,
        //padding: EdgeInsets.only(top: 10.0, bottom: 29.0),
        height: MediaQuery.of(context).size.height,
        //width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(children: [
                  Text(
                    "Hello! Welcome back!",
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                  Icon(
                    Icons.waving_hand,
                    color: Color.fromARGB(255, 248, 226, 31),
                  )
                ]),
                Padding(
                  //padding: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.only(top: 90, left: 3),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    //padding: EdgeInsets.symmetric(horizontal: 20),

                    children: [
                      //margin: const EdgeInsets.only(top: 40.0)
                      makeInput(label: "Email"),

                      makeInput(label: "Password", obsureText: true),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    margin: EdgeInsets.only(top: 90, left: 3),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {},
                      color: Color.fromARGB(204, 12, 122, 117),
                      //color: Colors.indigoAccent[400],
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.white,
                                Color.fromARGB(26, 189, 41, 41),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        width: 100.0,
                        height: 1.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          "OR Login With",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 16.0,
                              fontFamily: "WorkSansMedium"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.white,
                                Color.fromARGB(26, 189, 41, 41),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        width: 100.0,
                        height: 1.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, right: 40.0),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          width: 152,
                          //mainAxisAlignmentcolor: Colors.white,
                          padding: const EdgeInsets.all(15.0),
                          decoration: new BoxDecoration(
                            //color: Colors.white,

                            border: Border.all(
                              color: Color.fromARGB(255, 59, 59, 57),
                            ),
                          ),
                          child: new Icon(
                            //Text("Call"),
                            FontAwesomeIcons.facebook,
                            color: Color(0xFF0084ff),
                          ),
                          //Text("Call"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          width: 152,
                          padding: const EdgeInsets.all(15.0),

                          decoration: new BoxDecoration(
                              border: Border.all(
                            color: Color.fromARGB(255, 59, 59, 57),
                            //shape: BoxShape.circle,
                            //color: Colors.white,
                          )),
                          child: new Icon(
                            FontAwesomeIcons.google,
                            color: Color(0xFF0084ff),
                          ),
                          //label: Text('Contact me',),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  //padding: EdgeInsets.only(top: 90, left: 3),
                  mainAxisAlignment: MainAxisAlignment.center,
                  //: EdgeInsets.only(top: 90, left: 3),

                  //padding: EdgeInsets.symmetric(horizontal: 20),

                  children: [
                     
                    Text("Dont have an account?"),
                    ButtonTheme(
                        minWidth: 50.0,
                        height: 28.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpWidget()));
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                //color: Colors.grey[400],
                ),
          ),
          border: OutlineInputBorder(
              //borderSide: BorderSide(color: Colors.grey[400])),
              ),
        ),
      )
    ],
  );
}
