import 'package:flutter/material.dart';
import 'package:homepage/Data/data.dart';
import 'package:homepage/Widget/restaurant_card.dart';

class HomeItemPage extends StatefulWidget {
  const HomeItemPage({Key? key}) : super(key: key);

  @override
  State<HomeItemPage> createState() => _HomeItemPageState();
}

class _HomeItemPageState extends State<HomeItemPage> {
  List<String> items = ['Your Location', 'Home', 'School', 'Church'];
  String? selectedItem = 'Your Location';

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ImageIcon(
                      AssetImage("assets/images/location_icon.png"),
                      size: 13,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: DropdownButton(
                        underline: const SizedBox(),
                        value: selectedItem,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )))
                            .toList(),
                        onChanged: (item) =>
                            setState(() => selectedItem = item),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.5),
                      child: ImageIcon(
                        AssetImage("assets/images/light_icon.png"),
                        size: 13,
                        color: Color.fromRGBO(254, 106, 1, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: DropdownButton(
                        underline: const SizedBox(),
                        icon: const ImageIcon(
                          AssetImage("assets/images/hamburger_menu_icon.png"),
                          size: 35,
                          color: Color.fromRGBO(254, 106, 1, 1),
                        ),
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )))
                            .toList(),
                        onChanged: (item) =>
                            setState(() => selectedItem = item),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  width: fullWidth,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 3,
                            color: Color.fromRGBO(0, 0, 0, 0.4))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        const Icon(Icons.search, size: 16),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 6.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search for today's meal",
                                  hintStyle: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 3,
                                    color: Color.fromRGBO(0, 0, 0, 0.4))
                              ]),
                          child: const ImageIcon(
                            AssetImage("assets/images/food_plate.png"),
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Dishes",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 3,
                                    color: Color.fromRGBO(0, 0, 0, 0.4))
                              ]),
                          child: const ImageIcon(
                            AssetImage("assets/images/drinks.png"),
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Drinks",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 3,
                                    color: Color.fromRGBO(0, 0, 0, 0.4))
                              ]),
                          child: const ImageIcon(
                            AssetImage("assets/images/pizza.png"),
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Pizza",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 3,
                                    color: Color.fromRGBO(0, 0, 0, 0.4))
                              ]),
                          child: const ImageIcon(
                            AssetImage("assets/images/dessert.png"),
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Dessert",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 3,
                                    color: Color.fromRGBO(0, 0, 0, 0.4))
                              ]),
                          child: const ImageIcon(
                            AssetImage("assets/images/others.png"),
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Others",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 5),
                child: Text(
                  "Restaurants",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: restaurant
                      .map((restaurant) => buildRestaurantCard(context,
                          image: restaurant.image,
                          location: restaurant.location,
                          time: restaurant.time,
                          rating: restaurant.rating))
                      .toList(),
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRestaurantCard(BuildContext context,
          {required String image,
          required String location,
          required String time,
          required String rating}) =>
      FractionallySizedBox(
        // heightFactor: 08,
        child: RestaurantCard(
          location: location,
          time: time,
          rating: rating,
          image: image,
        ),
      );
}
