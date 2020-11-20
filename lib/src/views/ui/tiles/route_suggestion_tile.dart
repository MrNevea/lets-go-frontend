import 'package:flutter/material.dart';

class RouteSuggestionTile extends StatelessWidget {
  final String totalCost;
  final String iconUrl;
  final String title;
  final bool checked;
  final int votes;

  RouteSuggestionTile(
      {@required this.totalCost,
      @required this.iconUrl,
      @required this.title,
      this.checked = false,
      this.votes = 0});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(title),
        ],
      ),
      leading: CircleAvatar(backgroundImage: NetworkImage(iconUrl)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            totalCost,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Checkbox(value: this.checked, onChanged: (val) {}),
          Text(
            votes.toString(),
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
