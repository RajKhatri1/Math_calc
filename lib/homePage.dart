import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  String v = "", b = "", c = "", o = "", ans = "";

  int fi = 0, di = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2e2d32),
        appBar: AppBar(
          backgroundColor: Color(0xff2e2d32),
          title: Text(
            "Calculator",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 120,
                width: double.infinity,
                alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "$v",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          "$o",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          "$b",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "$ans",
                      style: TextStyle(fontSize: 70, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 0,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.white24))),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 220,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              v = "";
                              o = "";
                              b = "";
                              ans = "";
                            });
                          },
                          child: Expanded(
                            flex: 2,
                            child: Container(
                              height: 80,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Color(0xffff5a66),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Text(
                                  "AC",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              {
                                o += "%";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "%",
                                style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (v != "0") {
                                o += "/";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "/",
                                style: TextStyle(
                                  color: Color(0xffff5a66),
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "7";
                              } else {
                                v += "7";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "7",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "8";
                              } else {
                                v += "8";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "9";
                              } else {
                                v += "9";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "9",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (v != "0") {
                                o += "*";
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 7),
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "*",
                                style: TextStyle(
                                  color: Color(0xffff5a66),
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "4";
                              } else {
                                v += "4";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "5";
                              } else {
                                v += "5";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "6";
                              } else {
                                v += "6";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "6",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (v != "0") {
                                o += "-";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: Color(0xffff5a66),
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "1";
                              } else {
                                v += "1";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "2";
                              } else {
                                v += "2";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "3";
                              } else {
                                v += "3";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (v != "0") {
                                o += "+";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: Color(0xffff5a66),
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (o == "+" ||
                                  o == "-" ||
                                  o == "%" ||
                                  o == "/" ||
                                  o == "*") {
                                b += "00";
                              } else {
                                v += "00";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                "00",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (v != "0") {
                                v = "$v" + "0";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            alignment: Alignment.center,
                            child: Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              v = "$v" + ".";
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                ".",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              fi = int.parse(v);
                              di = int.parse(b);
                              if (o == "+") {
                                ans = "= ${fi + di}";
                              } else if (o == "-") {
                                ans = "= ${fi - di}";
                              } else if (o == "*") {
                                ans = "= ${fi * di}";
                              } else if (o == "/") {
                                ans = "= ${fi / di}";
                              } else if (o == "%") {
                                ans = "= ${fi % di}";
                              }
                            });
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffff5a66),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                "=",
                                style: TextStyle(
                                    fontSize: 60, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
