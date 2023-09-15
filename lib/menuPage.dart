import 'package:flutter/material.dart';
import 'package:sharedpref/Burger_screen.dart';
import 'package:sharedpref/Chole_screen.dart';
import 'package:sharedpref/pizza_screen.dart';
import 'package:sharedpref/samosaScreen.dart';

void main() {
  runApp(menuPage());
}

// ignore: camel_case_types
class menuPage extends StatefulWidget {
  @override
  State<menuPage> createState() => _menuPageState();
}

// ignore: camel_case_types
class _menuPageState extends State<menuPage> {
  var searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          "Menu",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding:  EdgeInsets.all(11.0),
              child: Icon(
                Icons.notifications_active,
                color: Colors.green,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color:  Color(0xff764abc)),
              accountName: Text(
                "RESTAURANT CATEGORIES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "himanshu@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(Icons.fastfood,),
              title: const Text('FAST FOOD '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.emoji_food_beverage_outlined,),
              title: const Text('BREAKFAST MEALS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:const  Icon(Icons.lunch_dining_outlined,),
              title: const Text('LUNCH MEALS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dinner_dining_outlined,),
              title: const Text('DINNER MEALS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: searchcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21.0),
                ),
                prefixIcon: const Icon(Icons.search,),
                hintText: "Search",
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 11,),
            Expanded(
                child:Container(
              child: Padding(
                padding: const  EdgeInsets.all(21.0),
                child: GridView.count(
                  crossAxisCount: 1,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(21.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/Images/samosa.jpeg'))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Samosa_screen()));
                                      },
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(21.0),
                                          child: const Image(
                                            image: AssetImage(
                                              'assets/Images/samosa.jpeg',
                                            ),
                                            width: 150,
                                            height: 150,
                                          ))),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Text(
                                    'SAMOSA',
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Card(
                                  color: Colors.transparent,
                                  child: Text(
                                    'A samosa is a fried South Asian pastry with a savoury filling, including ingredients such as spiced potatoes, onions, peas, meat or fish. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(21.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/Images/chole.jpeg'))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    chole_screen()));
                                      },
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(21.0),
                                          child: const Image(
                                            image: AssetImage(
                                              'assets/Images/chole.jpeg',
                                            ),
                                            fit: BoxFit.fill,
                                            width: 150,
                                            height: 150,
                                          ))),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Text('CHOLE BHATURE', style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Card(
                                  color: Colors.transparent,
                                  child: Text(
                                    'Chole bhature is a food dish popular in the Northern areas of the Indian subcontinent. It is a combination of chana masala and bhatura/puri, a deep-fried bread made from maida. Chole bhature is often eaten as a breakfast dish, sometimes accompanied with lassi.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(21.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/Images/pizza.jpeg'))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => pizza_screen()));
                                      },
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(21.0),
                                          child: const Image(
                                            image: AssetImage('assets/Images/pizza.jpeg',),
                                            fit: BoxFit.fill,
                                            width: 150,
                                            height: 150,
                                          ))),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.all(30.0),
                                  child: Text('PIZZA', style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Card(
                                  color: Colors.transparent,
                                  child: Text(
                                    'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(21.0),
                      child: Container(
                        decoration:const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/Images/burger.jpeg'))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    burger_screen()));
                                      },
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(21.0),
                                          child: const Image(
                                            image: AssetImage(
                                              'assets/Images/burger.jpeg',
                                            ),
                                            fit: BoxFit.fill,
                                            width: 150,
                                            height: 150,
                                          ))),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.all(30.0),
                                  child: Text(
                                    'BURGER',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40.0),
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Card(
                                  color: Colors.transparent,
                                  child: Text(
                                    'A hamburger, or simply burger, is a sandwich consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
