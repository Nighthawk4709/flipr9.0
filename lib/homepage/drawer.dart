import 'package:flipr/history/sent.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          // Important: Remove any padding from the ListView.
          children: [
            ListTile(
              title: Text(
                "WeMail",
                style: TextStyle(color: Colors.red[300], fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.mark_email_unread_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("All inboxes")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Inboxes")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "All labels",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Profile")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.star_border_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Starred")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.timer),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Scheduled")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.label_important_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Important")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.send),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Sent")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.outbox_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Outbox")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
            Row(children: [
              InkWell(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width * 0.7,
                  onPressed: () {
                    context.signOut();
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.logout_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Logout")
                      ],
                    ),
                  ),
                ),
              ))
            ]),
          ]),
    );
  }
}
