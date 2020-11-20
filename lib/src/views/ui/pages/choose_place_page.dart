import 'package:flutter/material.dart';
import 'package:lets_go/src/views/ui/tiles/place_suggestion_tile.dart';

class ChoosePlacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Suggest place",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.cyan)),
              SizedBox(
                height: 20,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Poland, Karkonosze',
                      labelText: 'Enter location',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan)))),
              SizedBox(
                height: 20,
              ),
              PlaceSuggestionTile(
                name: "Poland, Karkonosze",
                icon: "🇵🇱",
                isChecked: true,
                votes: 3,
              ),
              PlaceSuggestionTile(
                name: "Poland, Tatry",
                icon: "🇵🇱",
                isChecked: false,
                votes: 1,
              ),
              PlaceSuggestionTile(
                name: "Poland, Pieniny",
                icon: "🇵🇱",
                isChecked: false,
                votes: 0,
              ),
              PlaceSuggestionTile(
                name: "Italy, Alps",
                icon: "🇮🇹",
                isChecked: true,
                votes: 5,
              ),
              PlaceSuggestionTile(
                name: "USA, Southern Cordillera",
                icon: "🇺🇸",
                isChecked: true,
                votes: 3,
              ),
              PlaceSuggestionTile(
                name: "USA, Northern Cordillera",
                icon: "🇺🇸",
                isChecked: false,
                votes: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
