import 'package:flutter/material.dart';

class CreateTripPage extends StatelessWidget {
  final boldTextStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.cyan);

  final basicStyle = TextStyle(fontSize: 35, color: Colors.black);

  final basicBoldStyle =
      TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(style: basicStyle, children: [
                TextSpan(text: "Choose", style: boldTextStyle),
                TextSpan(text: " existing trip")
              ]),
            ),
            RichText(
              text: TextSpan(style: basicStyle, children: [
                TextSpan(text: "Or", style: basicBoldStyle),
              ]),
            ),
            RichText(
              text: TextSpan(style: basicStyle, children: [
                TextSpan(text: "Create", style: boldTextStyle),
                TextSpan(text: " new"),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
