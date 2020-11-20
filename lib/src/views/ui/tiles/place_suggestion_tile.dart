import 'package:flutter/material.dart';

class PlaceSuggestionTile extends StatelessWidget {
  final String name;
  final String icon;
  final int votes;
  final bool isChecked;

  PlaceSuggestionTile(
      {@required this.name,
      @required this.icon,
      this.votes = 0,
      this.isChecked = false});

  TextStyle titleStyle = TextStyle(fontWeight: FontWeight.bold);
  TextStyle flagStyle = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: titleStyle,
      ),
      leading: Text(
        icon,
        style: flagStyle,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(value: isChecked, onChanged: (change) {}),
          Text(votes.toString())
        ],
      ),
    );
  }
}
