// here we have to make the ui for compose button

import 'package:flipr/homepage/searchBar.dart';
import 'package:flutter/material.dart';

final List dropdown = ["Attach a file", "Insert from drive"];

class edit extends StatefulWidget {
  const edit({Key? key}) : super(key: key);

  @override
  _editState createState() => _editState();
}

class _editState extends State<edit> {
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
