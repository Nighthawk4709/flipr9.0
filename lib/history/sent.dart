import 'package:flipr/homepage/edit.dart';
import 'package:flipr/homepage/searchBar.dart';
import 'package:flipr/loginscreens/animation/background_painter.dart';
import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  final List _time = [
    "07:30",
    "21:15",
    "00:30",
    "06:40",
    "10:30",
    "11:45",
    "07:30",
    "21:15",
    "00:30",
    "06:40",
    "10:30",
    "11:45",
    "07:30",
    "21:15",
    "00:30",
    "06:40",
    "10:30",
    "11:45",
    "07:30",
    "21:15",
    "00:30",
    "06:40",
    "10:30",
    "11:45",
  ];

  final List headers = [
    "Jayvardhan Patil",
    "Shubham Pandit",
    "Sourav Singh",
    "Kunal Kapoor",
    "Aniket Tiwari",
    "Yashwardhan",
    "Acer Supports",
    "IRCTC",
    "Working union",
    "Varun Das",
    "Jayvardhan Patil",
    "Shubham Pandit",
    "Sourav Singh",
    "Kunal Kapoor",
    "Aniket Tiwari",
    "Yashwardhan",
    "Acer Supports",
    "IRCTC",
    "Working union",
    "Varun Das",
  ];
  final List _color = [
    Colors.purple,
    Colors.blueAccent,
    Colors.deepOrange,
    ExtendedColor.darkOrange,
    ExtendedColor.darkBlue,
    Colors.purple,
    Colors.deepOrange,
    Colors.blueAccent,
    Colors.deepOrange,
    ExtendedColor.darkOrange,
    ExtendedColor.darkBlue,
    Colors.green,
    ExtendedColor.darkBlue,
    ExtendedColor.darkOrange,
    Colors.purple,
    Colors.green,
    ExtendedColor.darkBlue,
    ExtendedColor.darkOrange,
    Colors.purple,
    Colors.blueAccent,
    Colors.deepOrange,
    ExtendedColor.darkOrange,
    ExtendedColor.darkBlue,
    Colors.green,
    ExtendedColor.darkBlue,
    ExtendedColor.darkOrange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          toolbarHeight: MediaQuery.of(context).size.height * 0.125,
          actions: [SearchBar()],
        ),
        body: Center(
          child: Text("No email found"),
        ),
        /*body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "  SENT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
                flex: 14,
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              height: MediaQuery.of(context).size.height * 0.12,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 24.00,
                                  backgroundColor: _color[index],
                                  child: Text(
                                    headers[index][0],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                              width: MediaQuery.of(context).size.width * 0.64,
                              height: MediaQuery.of(context).size.height * 0.12,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        headers[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "lorem isidfks ifsps aksd asdkhadjad adsa\n akjsdhad asdkjahdadl asdkjadhad",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              height: MediaQuery.of(context).size.height * 0.12,
                              padding: EdgeInsets.fromLTRB(18.0, 10.0, 0, 0),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Text(
                                      _time[index],
                                      style: TextStyle(fontSize: 12.0),
                                    )
                                  ]),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border_outlined)
                                    ],
                                  )
                                ],
                              ))
                        ])
                      ],
                    );
                  },
                ))
          ],
        ),*/
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.red[300],
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => edit()),
            );
          },
          child: Icon(Icons.edit),
        ));
  }
}
