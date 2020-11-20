import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lets_go/src/views/ui/pages/choose_place_page.dart';
import 'package:lets_go/src/views/ui/pages/choose_transport_page.dart';
import 'package:lets_go/src/views/ui/pages/create_trip_page.dart';
import 'package:lets_go/src/views/ui/pages/invite_friends_page.dart';
import 'package:lets_go/src/views/ui/navigation/trip_tile.dart';
import 'package:lets_go/src/views/utils/NetworkImageConfig.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s go app',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.transparent),
      home: MyHomePage(title: 'Hello Adrian 👋🏼'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int actualPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: actualPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _showModalAddNewTrip(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              height: 136.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'New trip', border: InputBorder.none)),
                      FlatButton(
                          onPressed: () {},
                          child: Text("Create",
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget _getFab(BuildContext context) {
    switch (actualPage) {
      case 0:
        return FloatingActionButton.extended(
            icon: Icon(Icons.card_travel),
            label: Text("Create new trip"),
            backgroundColor: Colors.cyan,
            onPressed: () {
              _showModalAddNewTrip(context);
            });
        break;
      case 1:
      case 2:
      case 3:
      case 4:
        return FloatingActionButton.extended(
            icon: Icon(Icons.check_circle_outline),
            label: Text("Complete step"),
            backgroundColor: actualPage > 1 ? Colors.grey : Colors.indigo,
            onPressed: () {});
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
          backgroundColor: Colors.lightBlue[400].withOpacity(1),
        ),
        resizeToAvoidBottomInset: false,
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text('Your trips',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.cyan[500],
                              shadows: [
                                Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Colors.grey[300])
                              ])),
                    ],
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(NetworkImageConfig.planeImage))),
                ),
                TripTile(
                    tripName: "USA travel", progress: "0/10", emoji: "🇺🇸"),
                TripTile(
                    tripName: "Madagascar journey",
                    progress: "4/8",
                    emoji: "🇲🇬"),
                TripTile(
                    tripName: "Mountain Trip", progress: "2/8", emoji: "🇵🇱"),
                TripTile(tripName: "LA Trip", progress: "1/8", emoji: "🇺🇸"),
              ],
            ),
          ),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              actualPage = page;
            });
          },
          children: [
            CreateTripPage(),
            InviteFriendsPage(),
            ChoosePlacePage(),
            ChooseTransportPage()
          ],
        ),
        floatingActionButton: showFab ? _getFab(context) : null);
  }
}
