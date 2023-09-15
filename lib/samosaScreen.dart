import 'package:flutter/material.dart';

void main() {
  runApp(const Samosa_screen());
}
// ignore: camel_case_types
class Samosa_screen extends StatefulWidget {
  const Samosa_screen({super.key});

  @override
  State<Samosa_screen> createState() => _Samosa_screenState();
}
// ignore: camel_case_types
class _Samosa_screenState extends State<Samosa_screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/Images/Module2.jpg',),
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
                      const SizedBox(height: 100,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon:const  Icon(Icons.arrow_circle_left_outlined, size: 40.0,),
                            alignment: Alignment.topLeft,
                          ),
                          const SizedBox(width: 2.0,),
                         const  Text('back', style: TextStyle(fontSize: 20.0, color: Colors.red),)
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(color: Colors.green, fontSize: 30.0, fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                TextSpan(text: "Ingredients"),
                                TextSpan(text: '\tof'),
                                TextSpan(
                                    text: '\tSamosa',
                                    style: TextStyle(
                                        fontSize: 50.0, color: Colors.red))
                              ]))),
                      const SizedBox(height: 30,),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "2 cup all purpose flour\n1 teaspoon cumin seeds\n1 teaspoon crushed ginger\n1 teaspoon raisins\n5 boiled potato\n1 teaspoon coriander powder\n1 teaspoon red chilli powder\n1 teaspoon kasoori methi leaves\n1 teaspoon carom seeds\n1/4 cup water\n2 cup virgin olive oil\n1/2 teaspoon coriander seeds\n1 teaspoon green chill\n1 teaspoon cashews\n1 teaspoon cumin powder\n1/2 teaspoon garam masala powder\nsalt as required\n1 teaspoon coriander leaves\n2 tablespoon ghe\n1 handful raw peanuts",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 100.0,),
                      const Text('How to make Samosa ??', style: TextStyle(color: Colors.red, fontSize: 30.0, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 50.0,),
                      const Padding(padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Step 1 :\n\nSauté cumin seeds for potato filling\nTo make delicious samosas at home, first, make the filling. Put a pan on medium flame and add 2 tsp olive oil in it. Once the oil is hot enough, add cumin seeds and allow them to crackle.",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(11.0),
                        child:
                            Image(image: AssetImage('assets/Images/boil.png')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Step 2 :\n\nAdd spices and boiled potatoes and cook for a while,\nNow, add whole coriander seeds, ginger and green chilli. Saute for a minute and then add chopped cashews and raisins, peanuts if you like them, boiled and mashed potatoes, cumin powder, coriander powder, garam masala powder, red chilli powder, salt to taste, kasoori methi leaves, coriander leaves. Mix well and saute for 2 minutes. Your stuffing is ready!",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Image(
                            image: NetworkImage(
                                'https://static.toiimg.com/thumb/62804504.cms?width=630&height=420')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text(
                          "Step 3 :\n\nPrepare the dough for the Samosa,\nNow, to prepare the dough, take a mixing bowl and combine all-purpose flour along with carom seeds and salt. Mix and then add ghee and start kneading by adding a little water at a time. Ensure that you add water gradually and make a firm dough. A soft dough will not make your samosas crispy. Cover the dough with a damp muslin cloth and keep aside for about half an hour.",
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
                                'https://static.toiimg.com/thumb/62804437.cms?width=630&height=420')),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text(
                          "Step 4 :\n\nRoll the dough in small puris and cut into half,\nOnce done, roll out few small-sized balls from the dough. Flatten them further with the help of your palms and then with a rolling pin. Give them a round shape and cut in half. Now dip your hands in water, fold the edges of the semi-circle in order to give it a cone shape.",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(11.0),
                        child: Image(
                            image: NetworkImage(
                                'https://static.toiimg.com/thumb/62804438.cms?width=630&height=420')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text(
                          "Step 5 :\n\n Fill the semi-circle with potato filling and deep fry,\nTake the filling with the help of a spoon and stuff it in the cone. Seal the ends properly by pressing the edges lightly with your fingers. Then, heat olive oil in a pan and deep fry the samosas on low heat until they turn golden brown and crispy. Serve with tomato ketchup and green chutney. Enjoy it as a tea-time snack!",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(11.0),
                        child: Image(image: AssetImage('assets/Images/fry.png',)
                        ),
                      ),
                      const SizedBox(height: 20.0,),
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
