import 'package:flipr/homepage/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get label => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red[100],
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: SearchBar(),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red[400]),
              onPressed: () {},
              child: Icon(
                Icons.person,
                color: Colors.white,
              )),
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 20,
        itemExtent: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.1,
            child: Center(
              child: Text("email'$index'"),
            ),
          );
        },
      )),
    );
  }
}
