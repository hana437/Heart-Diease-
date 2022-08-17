import 'package:flutter/material.dart';
import 'package:heartdiease/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heartdiease/login_widget.dart';
//Widget for input

class SignUpWidget extends StatefulWidget {
  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUpWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmPassword = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
                    // colorborder: Border.all(
                    //width: 10,
                    //color: Color.fromARGB(255, 138, 134, 134),
                    //),
                    ),
                child: Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.topCenter,
                        //overflow: Overflow.visible,
                        children: <Widget>[
                          Card(
                            elevation: 2.0,
                            // color: Color.fromARGB(255, 214, 44, 44),
                            margin: const EdgeInsets.only(top: 10.0),

                            child: Container(
                              width: 360.00,
                              height: 480.00,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 250.0,
                                    height: 1.0,
                                    //color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 100.0,
                                        bottom: 20.0,
                                        left: 25.0,
                                        right: 25.0),
                                    child: TextField(
                                      focusNode: focusEmail,
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                          fontFamily: "SignikaSemiBold",
                                          fontSize: 16.0,
                                          color: Colors.black),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(
                                            FontAwesomeIcons.envelope,
                                            color: Colors.black,
                                            size: 22.0,
                                          ),
                                          hintText: "Enter email",
                                          hintStyle: TextStyle(
                                              fontFamily: "SignikaSemiBold",
                                              fontSize: 18.0)),
                                    ),
                                  ),
                                  Container(
                                    width: 250.0,
                                    height: 1.0,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 20.0,
                                        bottom: 20.0,
                                        left: 25.0,
                                        right: 25.0),
                                    child: TextField(
                                      focusNode: focusPassword,
                                      controller: passwordController,
                                      style: TextStyle(
                                          fontFamily: "SignikaSemiBold",
                                          fontSize: 16.0,
                                          color: Colors.black),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(
                                            FontAwesomeIcons.lock,
                                            color: Colors.black,
                                            size: 22.0,
                                          ),
                                          hintText: "Enter password",
                                          hintStyle: TextStyle(
                                              fontFamily: "SignikaSemiBold",
                                              fontSize: 18.0)),
                                    ),
                                  ),
                                  Container(
                                    width: 250.0,
                                    height: 1.0,
                                    color: Colors.grey,
                                  ),
                                  Container(
                                    width: 250.0,
                                    height: 1.0,
                                    color: Colors.grey,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 40.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 13, 161, 33),
                                              offset: Offset(1.0, 6.0),
                                              blurRadius: 20.0),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 21, 192, 58),
                                              offset: Offset(1.0, 6.0),
                                              blurRadius: 20.0),
                                        ],
                                        gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 21, 192, 35),
                                              Color.fromARGB(255, 25, 161, 13)
                                            ],
                                            begin: const FractionalOffset(
                                                0.2, 0.2),
                                            end: const FractionalOffset(
                                                1.0, 1.0),
                                            stops: [0.1, 1.0],
                                            tileMode: TileMode.clamp)),
                                    child: MaterialButton(
                                      highlightColor: Colors.transparent,
                                      splashColor:
                                          Color.fromARGB(255, 21, 192, 29),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 42.0),
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(
                                              fontFamily: "SignikaSemiBold",
                                              color: Colors.white,
                                              fontSize: 22.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        //Navigator.pop(context);
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen()));
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              //margin: EdgeInsets.only(top: 30.0),
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
                                "OR",
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
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: FlatButton(
                          child: Text(
                            "Sign up with",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: "SignikaRegular"),
                          ),
                          onPressed: () {},
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
                                padding: const EdgeInsets.all(15.0),
                                decoration: new BoxDecoration(
                                  //shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: new Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: Color(0xFF0084ff),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: GestureDetector(
                              onTap: () => {},
                              child: Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: new Icon(
                                  FontAwesomeIcons.google,
                                  color: Color(0xFF0084ff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}
