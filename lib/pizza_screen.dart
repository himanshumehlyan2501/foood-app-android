import 'package:flutter/material.dart';

void main() {
  runApp(pizza_screen());
}

// ignore: camel_case_types
class pizza_screen extends StatefulWidget {
  @override
  State<pizza_screen> createState() => _pizza_screenState();
}

// ignore: camel_case_types
class _pizza_screenState extends State<pizza_screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-photo/flat-lay-assortment-cheese-wooden-cutting-board_23-2148376087.jpg?w=2000',
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
                            color: Colors.white,
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
                          padding: const EdgeInsets.all(8.0),
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
                                    text: '\tPizza',
                                    style: TextStyle(
                                        fontSize: 50.0, color: Colors.red))
                              ]))),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "2 cup all purpose flour\n100 ml tomato ketchup\n1 tomato\n2 onion\n1 teaspoon chilli flakes\n1 teaspoon baking powder\n1 teaspoon sugar\n2 teaspoon virgin olive oil\n100 gm processed cheese\n4 mushroom\n1/2 capsicum (green pepper)\n1 teaspoon oregano\n1/2 cup mozzarella\n1 tablespoon dry yeast\nwater as required",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const  SizedBox(
                        height: 100.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'How to make Pizza ??',
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
                          "Step 1 :\n\nPrepare the pizza dough\nTake a dough kneading plate and add all-purpose flour to it. Next, add salt and baking powder in it and sieve the flour once. Then, make a well in the centre and add 2 teaspoon of olive oil to it. On the other hand, take a little warm water and mix the yeast in it along with 1 teaspoon of sugar. Mix well and keep aside for 10-15 minutes. The yeast will rise in the meantime. Once the yeast has risen, add it to the flour knead the dough nicely using some water. Keep this dough aside for 4-6 hours. Then knead the dough once again. Now, the pizza dough is ready.",
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
                                'https://static.toiimg.com/thumb/74227472.cms?width=630&height=420')),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Step 2 :\n\nPrepare the pizza base\nPreheat the oven at 180 degree Celsius. Now, is the time to make the pizza base when the dough is ready. Dust the space a little using dry flour and take a large amount of the pizza dough. Using a rolling pin, roll this dough into a nice circular base. (Note: Make sure that the circular base is even at all ends.) Once you have made the base, use a fork and prick the base with it so that the base doesn't rise and gets baked nicely. Put it into the preheated oven and bake it 10 minutes. Now, your pizza base is ready.",
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
                                'https://static.toiimg.com/thumb/74227473.cms?width=630&height=420')),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Step 3 :\n\n Chop all the vegetables for the pizza\nNow, wash the capsicum and slice it thinly in a bowl. Then, peel the onions and cut thin slices of it as well in another bowl. And finally, cut tomatoes and mushrooms in the same manner. However, make sure that those tomatoes have less juice in them. Once all the veggies are done, Now, grate the processed and mozzarella cheese in separate bowls.",
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
                                'https://static.toiimg.com/thumb/74227789.cms?width=630&height=420')),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Step 4 :\n\nSpread the sauce and veggies on the base\nThen, take the fresh pizza base and apply tomato ketchup all over. Spread half the processed cheese all over the base and evenly put the veggies all across the base. Once you have put all the veggies, put a thick layer of mozzarella cheese.",
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
                                'https://static.toiimg.com/thumb/74227790.cms?width=630&height=420')),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding:EdgeInsets.all(20.0),
                        child: Text(
                          "Step 5 :\n\nBake the pizza at 250 degree Celsius for 10 minutes\nPut this pizza base in a baking tray and place it inside the oven. Let the pizza bake 10 minutes at 250 degree Celsius. Once done, take out the baking tray and slice the pizza. Sprinkle oregano and chilli flakes as per your taste and serve hot. (Note: Make sure that the oven is preheated at 250 degree Celsius for 5 minutes at least.)",
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
                          'https://static.toiimg.com/thumb/74227792.cms?width=630&height=420',
                        )),
                      ),
                      const SizedBox(
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
