import 'package:flutter/material.dart';

class RouteCreatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create new route"),
        backgroundColor: Colors.lightBlue[400].withOpacity(1),
      ),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                RoutePoint(
                  sourceLocation: "LAX",
                  sourceDate: "16.11.2020",
                  sourceTime: "16:30",
                  destinationLocation: "JFK",
                  destinationDate: "16.11.2020",
                  destinationTime: "20:30",
                  formOfTransport: Icons.flight_rounded,
                  price: "190 USD",
                ),
                SizedBox(
                  height: 20,
                ),
                RoutePoint(
                  sourceLocation: "JFK",
                  sourceDate: "16.11.2020",
                  sourceTime: "22:50",
                  destinationLocation: "WAW",
                  destinationDate: "17.11.2020",
                  destinationTime: "13:10",
                  formOfTransport: Icons.flight_rounded,
                  price: "500 USD",
                ),
                SizedBox(
                  height: 20,
                ),
                RoutePoint(
                  sourceLocation: "WAW",
                  sourceDate: "17.11.2020",
                  sourceTime: "14:10",
                  destinationLocation: "WRO",
                  destinationDate: "17.11.2020",
                  destinationTime: "18:10",
                  formOfTransport: Icons.directions_car_rounded,
                  price: "50 USD",
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton.icon(
                  onPressed: () {},
                  label: Text("Add new route point",
                      style: TextStyle(color: Colors.white)),
                  icon: Icon(Icons.navigation, color: Colors.white),
                  color: Colors.cyan,
                ),
                SizedBox(
                  height: 50,
                ),
                FloatingActionButton.extended(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_money,
                      size: 30,
                    ),
                    label: Text(
                      "Summary: 740\$",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          )),
    );
  }
}

class RoutePoint extends StatelessWidget {
  final TextStyle locationStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 40);

  final TextStyle dateTimeStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 13, color: Colors.black87);

  final String sourceLocation;
  final String destinationLocation;
  final String sourceTime;
  final String destinationTime;
  final String sourceDate;
  final String destinationDate;
  final IconData formOfTransport;
  final String price;

  RoutePoint(
      {Key key,
      this.sourceLocation,
      this.destinationLocation,
      this.sourceTime,
      this.destinationTime,
      this.sourceDate,
      this.destinationDate,
      this.formOfTransport,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          child: Column(
            children: [
              Text(
                this.sourceDate,
                style: dateTimeStyle,
              ),
              Text(
                this.sourceLocation,
                style: locationStyle,
              ),
              Text(
                this.sourceTime,
                style: dateTimeStyle,
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                formOfTransport,
                size: 35,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  height: 4.0,
                  color: Colors.cyan,
                ),
              ),
              Text(
                this.price,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          width: 100,
          child: Column(
            children: [
              Text(
                this.destinationDate,
                style: dateTimeStyle,
              ),
              Text(
                this.destinationLocation,
                style: locationStyle,
              ),
              Text(
                this.destinationTime,
                style: dateTimeStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
