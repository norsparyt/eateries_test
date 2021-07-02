import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  TextEditingController _textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Icon(Icons.search_rounded),
        hintText: "Search",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).backgroundColor.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).backgroundColor.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(20.0),
        ));
    return Container(
      decoration: BoxDecoration(
        // color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 30.0, left: 30, right: 30, bottom: 10.0),
      child: TextField(
        controller: _textEditingController,
        decoration: inputDecoration,
      ),
    );
  }
}
