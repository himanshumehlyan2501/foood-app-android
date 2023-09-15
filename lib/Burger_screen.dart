import 'package:flutter/material.dart';

void main() {
  runApp(burger_screen());
}

class burger_screen extends StatefulWidget {
  @override
  State<burger_screen> createState() => _burger_screenState();
}

class _burger_screenState extends State<burger_screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/premium-photo/herb-spices-cooking-background_136595-562.jpg',
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_circle_left_outlined,
                              size: 40.0,
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          const Text(
                            'back',
                            style: TextStyle(fontSize: 20.0, color: Colors.red),
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                TextSpan(text: "Ingredients"),
                                TextSpan(text: '\tof'),
                                TextSpan(
                                    text: '\tBurger',
                                    style: TextStyle(
                                        fontSize: 50.0, color: Colors.red))
                              ]))),
                      const  SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Text(
                          "1 sliced onion\n4 slices cheese slices\n1 teaspoon powdered garam masala powder\n2 teaspoon refined oil\n1/2 gm ginger paste\n4 halved burger buns\n2 tablespoon tomato ketchup\n1/2 teaspoon garlic paste\n1 sliced tomato\n2 teaspoon powdered red chilli\n2 pinch powdered salt\n3 tablespoon breadcrumbs\n1 teaspoon lemon juice\n3 tablespoon butter\n1 handful chopped coriander leaves\n4 leaves lettuce loose-leaf",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text('For The Main Dish', style: TextStyle(
                            color: Colors.red,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Text(
                          "1/2 peeled,sliced cucumber\n2 chopped onion\n1/2 cup shelled peas\n2 mashed,boiled,peeled potato\n2 chopped carrot\n1/2 cup corn",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'How to make Burger ??',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Step 1 :\n\nPressure cook carrots, peas and corn\nTo make the burger patty, pressure cook the carrot, peas and sweet corn for 1 whistle or until soft.",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding:  EdgeInsets.all(11.0),
                        child: Image(
                            image: NetworkImage(
                                'https://static.toiimg.com/thumb/63912160.cms?width=630&height=420')),
                      ),
                      const Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text(
                          "Step 2 :\n\nAdd the spices\nAdd the cooked vegetables, chopped onions, red chilli powder, lemon juice, garam masala powder, salt and ginger-garlic paste to a large bowl.\n\n\nStep 3 :\nAdd mashed potatoes\nAdd lemon juice and mashed potatoes in the bowl, mix well until evenly combined. Shape the mixture into small/medium patties.\n\n\nStep 4 :\nShallow fry the patties\nNow heat oil in a pan over medium flame. Roll the prepared patties in the breadcrumbs and shallow fry until golden brown on both sides.\n\n\nStep 5 :\nKeep aside\nRemove and keep aside.\n\n\nStep 6 :\nPrepare the burger\nTake one half of the burger bun. Spread some butter and place the lettuce on top.\n\n\nStep 7 :\nAdd slices onions, cucumber and tomatoes\nPlace the prepared vegetable patty on top. Top up with slices of onion, tomato, cucumber and cheese. If you want to make it even more delicious and healthy replace cheese with eggless mayonnaise.\n\n\nStep 8 : \nBurger is ready\nCover it with the other half of the burger bun. If desired, add some ketchup on top. Secure it with a toothpick if desired.\n\n\nStep 9 :\nServe!\nServe at once with french fries. Make sure you like this recipe, rate it and let us know in the comments how it turned out to be.",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Image(
                            image: NetworkImage(
                          'https://static.toiimg.com/thumb/63912161.cms?width=630&height=420',
                        )),
                      ),
                     const  SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
