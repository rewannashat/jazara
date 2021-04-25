import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class DataSearch extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for AppBar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icon Leading
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();

  }
}
