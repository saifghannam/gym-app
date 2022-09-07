import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:gym/add_member.dart';
// import 'package:gym/View.dart';

import 'add_member.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 20),
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: double.infinity,
          child: Wrap(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 20),
              width: 170,
              height: 170,
              child: Builder(builder: (context) {
                return ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 70,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Add_m(),
                      ));
                    },
                    icon: Image(
                      image: AssetImage("images/member-add-on-300x300.png"),
                    ),
                    label: Text(
                      "Add member",
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                    ));
              }),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 20),
              width: 170,
              height: 170,
              child: Builder(builder: (context) {
                return ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 70,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return GymApp();
                        },
                      ));
                    },
                    icon: Image(
                      image: AssetImage("images/603_-_Search_User-512.png"),
                    ),
                    label: Text(
                      "View member",
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                    ));
              }),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 20),
              width: 170,
              height: 170,
              child: Builder(builder: (context) {
                return ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 70,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return GymApp();
                        },
                      ));
                    },
                    icon: Image(
                      image: AssetImage(
                          "images/user_remove_man_male_profile_account_person-512.png"),
                    ),
                    label: Text(
                      "Ubdate/Delete member",
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                    ));
              }),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 20),
              width: 170,
              height: 170,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 70,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                  icon: Image(
                    image: AssetImage("images/Payment.png"),
                    width: 50,
                    height: 50,
                  ),
                  label: Text(
                    "Payment",
                    style: TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Image(image: AssetImage("images/B2.png")),
            )
          ]),
        ),
      ),
    );
  }
}
