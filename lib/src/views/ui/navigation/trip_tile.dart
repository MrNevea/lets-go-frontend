import 'package:flutter/material.dart';

class TripTile extends StatelessWidget {
  final String tripName;
  final String progress;
  final String emoji;

  TripTile({@required this.tripName, @required this.progress, this.emoji = ""});

  final emojiStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 25);
  final tripNameStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(this.emoji, style: emojiStyle),
      title: Text(this.tripName, style: tripNameStyle),
      trailing: Text(this.progress),
      onTap: () {},
    );
  }
}
