import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String location;
  final String image;
  final String time;
  final String rating;
  final double width;

  const RestaurantCard({
    Key? key,
    required this.location,
    required this.image,
    required this.time,
    required this.rating,
    this.width = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: MediaQuery.of(context).size.height / 50,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Column(
            children: [
              Expanded(child: buildImage(context)),
              Row(
                children: [
                  Expanded(
                    child: bottomCard(context,
                        location: location, time: time, rating: rating),
                  )
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildImage(BuildContext context) => Image.asset(
        image,
        width: 250,
        fit: BoxFit.fitWidth,
      );
  Widget bottomCard(BuildContext context,
          {required String location,
          required String time,
          required String rating}) =>
      Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Row(
          children: [
            Text(
              "Location: $location",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 8,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              Icons.access_time,
              color: Color.fromRGBO(254, 106, 1, 1),
            ),
            Text(
              time,
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 8,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const ImageIcon(
              AssetImage("assets/images/rate.png"),
              size: 13,
            ),
            Text(
              rating,
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 8,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
}
