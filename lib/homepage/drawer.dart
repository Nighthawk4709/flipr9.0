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
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.mark_email_unread_outlined),
                    label: Text("All inboxes")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.email_outlined),
                    label: Text("Inboxes")),
              ),
            ),
          ]),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
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
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                    label: Text("Profile")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.star_border),
                    label: Text("Starred")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.timer_sharp),
                    label: Text("Snoozed")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.label_important_outline),
                    label: Text("Important")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.send_sharp),
                    label: Text("Sent")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.outbox_outlined),
                    label: Text("Outbox")),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {
                      context.signOut();
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Logout")),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
