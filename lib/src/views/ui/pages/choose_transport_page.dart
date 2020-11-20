import 'package:flutter/material.dart';
import 'package:lets_go/src/views/ui/pages/route_creator_page.dart';
import 'package:lets_go/src/views/ui/tiles/route_suggestion_tile.dart';
import 'package:lets_go/src/views/utils/NetworkImageConfig.dart';

class ChooseTransportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 36, 20, 36),
        child: Column(
          children: [
            Text("Suggest transport",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.cyan)),
            SizedBox(
              height: 25,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RouteCreatorPage()));
                },
                child: Text(
                  "ADD NEW ROUTE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            RouteSuggestionTile(
                totalCost: "800\$",
                iconUrl: NetworkImageConfig.avatarWoman1,
                title: "Jeyfrey's suggestion",
                checked: true,
                votes: 2),
            RouteSuggestionTile(
                totalCost: "600\$",
                iconUrl: NetworkImageConfig.avatarWoman2,
                title: "Route of your life",
                checked: false,
                votes: 6),
            RouteSuggestionTile(
                totalCost: "1100\$",
                iconUrl: NetworkImageConfig.avatarWoman3,
                title: "Best route",
                checked: true,
                votes: 4),
            RouteSuggestionTile(
                totalCost: "752\$",
                iconUrl: NetworkImageConfig.avatarWoman4,
                title: "Please choose",
                checked: false,
                votes: 1)
          ],
        ),
      ),
    );
  }
}
