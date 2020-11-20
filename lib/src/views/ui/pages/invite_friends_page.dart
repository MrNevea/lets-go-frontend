import 'package:flutter/material.dart';
import 'package:lets_go/src/views/ui/tiles/friend_tile.dart';
import 'package:lets_go/src/views/utils/NetworkImageConfig.dart';

class InviteFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Invite people",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.cyan)),
              SizedBox(
                height: 20,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Alexa#2173',
                      labelText: 'Invite new user',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan)))),
              SizedBox(
                height: 20,
              ),
              FriendTile(
                  name: 'Alexa',
                  iconUrl: NetworkImageConfig.avatarWoman1,
                  status: 'Pending'),
              FriendTile(
                  name: 'Elyse',
                  iconUrl: NetworkImageConfig.avatarWoman2,
                  status: 'Accepted'),
              FriendTile(
                  name: 'Nicole',
                  iconUrl: NetworkImageConfig.avatarWoman3,
                  status: 'Accepted'),
              FriendTile(
                  name: 'Britney',
                  iconUrl: NetworkImageConfig.avatarWoman4,
                  status: 'Rejected'),
            ],
          ),
        ),
      ),
    );
  }
}
