import 'package:flutter/material.dart';
import 'package:loterr_ia/Entities/ContactModel.dart';
import 'package:loterr_ia/Modules/SelectNumbers.dart';

class ContactTileWidget extends StatelessWidget {
  final ContactModel contact;
  const ContactTileWidget({Key key, @required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contact.name),
      subtitle: Text(contact.phone),
      leading: CircleAvatar(
        child: Image.network(contact.avatar)
      ),
    );
  }
}