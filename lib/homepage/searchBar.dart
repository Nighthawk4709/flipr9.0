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
    return Column(
      // layout of search bar
      // one row two expanded means 25% width of title to ReadCafe title
      // 75% to the search bar
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          //GFsearchBar from GetWidget library
          child: GFSearchBar(
            searchBoxInputDecoration: InputDecoration(
              // all decoration part of searchBar
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              hintText: "Search emails ...",
            ),

            //list defined above to be tested
            searchList: list,
            searchQueryBuilder: (query, list) {
              return list
                  .where((item) =>
                      '$item'.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            },
            overlaySearchListItemBuilder: (item) {
              return Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                padding: const EdgeInsets.all(8),
                child: Text(
                  '$item',
                  style: const TextStyle(fontSize: 18),
                ),
              );
            },

            // this function is used to print selected items in console
            onItemSelected: (item) {
              setState(() {
                print('$item');
              });
            },
          ),
        ),
      ],
    );
  }
}
