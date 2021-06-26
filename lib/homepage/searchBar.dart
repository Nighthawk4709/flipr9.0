import 'package:flipr/homepage/drawer.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
// in this page we will make the working of appbar

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
// list made for testing
  final List list = [
    "flipkart.com",
    "@aws.co.in",
    "django.org",
    "acerservicesupport.in"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
            child: GFSearchBar(
          searchBoxInputDecoration: InputDecoration(
            // all decoration part of searchBar
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic),
            hintText: "Search Emails ...",
          ),
          searchList: list,
          searchQueryBuilder: (query, list) {
            return list
                .where((item) =>
                    '$item'.toLowerCase().contains(query.toLowerCase()))
                .toList();
          },
          overlaySearchListItemBuilder: (item) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                '$item',
                style: const TextStyle(fontSize: 18),
              ),
            );
          },
          onItemSelected: (item) {
            setState(() {
              print('$item');
            });
          },
        )));
  }
}
