import 'package:flutter/material.dart';

import 'home.dart';

class Add_m extends StatefulWidget {
  Add_m({Key? key}) : super(key: key);

  @override
  State<Add_m> createState() => _Add_mState();
}

class _Add_mState extends State<Add_m> {
  String? gender = "";
  String? time = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Image(
                    image: AssetImage("images/1.png"),
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.only(top: 20, right: 50, left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      enabled: false,
                      hintText: " Number id Member...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 100)),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Name Member...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 100)),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter PhoneNumber Member...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 100)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Monthy Member...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 100)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Text("Gender :      "),
                      Text("            Male :"),
                      Radio(
                          value: "M",
                          groupValue: gender,
                          onChanged: (val) {
                            setState(() {
                              gender = val as String?;
                            });
                          }),
                      Text("Female :"),
                      Radio(
                          value: "F",
                          groupValue: gender,
                          onChanged: (val) {
                            setState(() {
                              gender = val as String?;
                            });
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The praice is  0",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      width: 150,
                      height: 35,
                      child: Builder(builder: (context) {
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: Color.fromARGB(255, 0, 0, 0),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ));
                            },
                            child: Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ));
                      }),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      width: 150,
                      height: 35,
                      child: Builder(builder: (context) {
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: Color.fromARGB(255, 0, 0, 0),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ));
                            },
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ));
                      }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
