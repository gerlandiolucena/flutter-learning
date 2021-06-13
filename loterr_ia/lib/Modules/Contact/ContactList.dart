import 'package:flutter/material.dart';
import 'package:loterr_ia/Modules/Contact/Widget/ContactTileWidget.dart';

class ContactList extends StatefulWidget {
  ContactList({Key key}): super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ContactTileWidget(),
      ),
    );
  }
}