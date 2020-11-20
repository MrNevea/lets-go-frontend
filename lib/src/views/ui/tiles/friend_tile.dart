import 'package:flutter/material.dart';

class FriendTile extends StatelessWidget {
  final String name;
  final String iconUrl;
  final String status;

  FriendTile(
      {@required this.name, @required this.iconUrl, @required this.status});

  TextStyle getStatusStyle() {
    if (status == 'Accepted') {
      return TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
    } else if (status == 'Rejected') {
      return TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(backgroundImage: NetworkImage(iconUrl)),
      trailing: Text(
        status,
        style: getStatusStyle(),
      ),
    );
  }
}
