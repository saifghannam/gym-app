import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GymApp());
}

class GymApp extends StatefulWidget {
  GymApp({Key? key}) : super(key: key);

  @override
  State<GymApp> createState() => _GymAppState();
}

class _GymAppState extends State<GymApp> {
  var email, password;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        width: double.infinity,
        height: double.infinity,
        child: Form(
          key: formstate,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage(
                  "images/1.png",
                ),
                width: 300,
                height: 300,
              ),
              Container(
                width: 300,
                height: 100,
                child: TextFormField(
                  onSaved: (newValue) {
                    email = newValue;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Name :",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 190, 211, 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 100,
                        )),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                child: TextFormField(
                  onSaved: (newValue) => password = newValue,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Your password :",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 190, 211, 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 100)),
                  ),
                ),
              ),
              Container(
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
                      onPressed: () async {
                        var data = formstate.currentState;
                        if (data!.validate()) {
                          data.save();
                          try {
                            final credential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: email,
                              password: password,
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print(
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        } else {
                          print("error");
                        }
                      },
                      child: Text(
                        "Enter",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ));
                }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
