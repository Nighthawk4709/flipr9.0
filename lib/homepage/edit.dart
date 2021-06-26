// here we have to make the ui for compose button

import 'package:flipr/homepage/searchBar.dart';
import 'package:flipr/homepage/test.dart';
import 'package:flutter/material.dart';
import 'mail.dart';

final List dropdown = ["Attach a file", "Insert from drive"];

class edit extends StatefulWidget {
  const edit({Key? key}) : super(key: key);

  @override
  _editState createState() => _editState();
}

class _editState extends State<edit> {
  final fromcontroller = new TextEditingController();
  final tocontroller = new TextEditingController();
  final subjectcontroller = new TextEditingController();
  final emailcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          leading: FlatButton(
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text("Compose"),
          ),
          actions: [
            // most imp buttons
            TextButton(
                onPressed: () {
                  //add functionality here
                  // attach a file
                },
                child: Icon(
                  Icons.attachment_outlined,
                  color: Colors.white,
                )),
            TextButton(
                onPressed: () {
                  //add functionality here
                  // send button

                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => Mail(
                                s1: fromcontroller.text,
                                s2: tocontroller.text,
                                s3: subjectcontroller.text,
                                s4: emailcontroller.text,
                              )));
                },
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: TextFormField(
                    controller: fromcontroller,
                    decoration: InputDecoration(
                        hintText: "From:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    maxLines: 2,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: TextFormField(
                    controller: tocontroller,
                    decoration: InputDecoration(
                        hintText: "To:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    maxLines: 2,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: TextFormField(
                    controller: subjectcontroller,
                    decoration: InputDecoration(
                        hintText: "Subject:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    maxLines: 2,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.46,
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        hintText: "Compose Email:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    maxLines: 100,
                  )),
            ],
          ),
        ));
  }
}

class Datafrom {
  late String from;

  Datafrom({required this.from});
// ignore: empty_constructor_bodies
}

class Datato {
  late String to;
  Datato({required this.to});
}

class Datasub {
  late String sub;
  Datasub({required this.sub});
}

class Dataemail {
  late String email;
  Dataemail({required this.email});
}
