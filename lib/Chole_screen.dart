import 'package:flutter/material.dart';

void main(){
  runApp(chole_screen());
}

class chole_screen extends StatefulWidget{
  @override
  State<chole_screen> createState() => _chole_screenState();
}

// ignore: camel_case_types
class _chole_screenState extends State<chole_screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(

        decoration:const  BoxDecoration(image: DecorationImage(image: NetworkImage('https://t4.ftcdn.net/jpg/03/50/25/33/360_F_350253365_4YGDKtzoPt5HOvf7rmdXWMqBpf03RSUL.jpg',),fit: BoxFit.fill)),
        child: Column(
          children: [
            Expanded(
              child:  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: MediaQuery. of(context). size. width ,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      const SizedBox(height: 100,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon:const Icon(Icons.arrow_circle_left_outlined,size: 40.0,),alignment:Alignment.topLeft,),
                          const SizedBox(width: 2.0,),
                          const Text('back',style: TextStyle(fontSize: 20.0,color:Colors.red),)
                        ],),


                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:  RichText(text:const  TextSpan(style: TextStyle(color: Colors.green,fontSize: 20.0,fontWeight: FontWeight.w500),
                              children: <TextSpan>[
                                TextSpan(text: "Ingredients"),
                                TextSpan(text: '\tof'),
                                TextSpan(text: '\tChole Bhature',style: TextStyle(fontSize: 40.0,color: Colors.red))

                              ]))),

                      const SizedBox(height: 30,),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("2 cup soaked overnight chickpeas\n2 chopped onion\n1/4 cup tomato puree\n1 teaspoon coriander powder\n5 cloves garlic\n1/2 teaspoon turmeric\n1 1/2 teaspoon chana masala powder\n1 teaspoon cumin\n1 tablespoon ginger\n3 tablespoon onion paste\nsalt as required\n1 teaspoon garam masala powder\n1 teaspoon red chilli powder",
                          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,),),
                      ),
                      const SizedBox(height: 20.0,),
                      const Text('For Dough',style: TextStyle(color: Colors.red,fontSize: 30.0,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 30,),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Text("1 cup all purpose flour\n3 teaspoon yoghurt (curd)\nrefined oil as required\nsalt as required\n1/4 tablespoon wheat flour",
                          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,),),
                      ),
                      const SizedBox(height: 100.0,),
                      const Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text('How to make Chole Bhature ??',style: TextStyle(color: Colors.red,fontSize: 30.0,fontWeight: FontWeight.bold),),
                      ),
                      const SizedBox(height: 50.0,),

                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Step 1 :\n\nPressure cook the chickpeas\nTo prepare the chole, soak chickpeas in water overnight or for 6-8 hours. Then, put a pressure cooker on high flame and add the soaked chickpeas in it along with salt to taste and 1 tea bag or you can also put 2-3 tea leaves and wrap it in a cloth. Cook the chickpeas for 15-20 minutes. (Note: The tea leaves or the tea bag will change the colour of gravy from dark brown to black.)",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),


                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(11.0),
                        child: Image(image: NetworkImage('https://static.toiimg.com/thumb/62619887.cms?width=630&height=420')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Step 2 :\n\nSaute the onion\nMeanwhile, put a pan on medium flame and heat a little oil in it. Add the cumin seeds and sliced onion to the pan. Saute the onion till golden brown, then add minced garlic, ginger and onion paste. Saute the ingredients for a few seconds until the raw smell of garlic goes away and then add tomato puree.",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Image(image:  NetworkImage('https://static.toiimg.com/thumb/62619955.cms?width=630&height=420')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Step 3 :\n\nAdd spices and cook the chole\nOnce the oil is separated, add turmeric, red chilli powder, coriander powder and chana masala. Cook the tomato-onion mixture for another two minutes, and then add cooked chole with little water. Stir well to mix the masala with the chole or the chickpeas. Check salt and allow it to cook for a few minutes. The chola is done! You can garnish with chopped onion and coriander leaves.",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Image(image:  NetworkImage('https://static.toiimg.com/thumb/62620030.cms?width=630&height=420')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text("Step 4 :\n\nPrepare the dough\nNow for making the bhaturas, combine together all-purpose flour or maida and wheat flour or atta in a dough kneading plate. Then add salt and oil to it. Mix well. Add yoghurt to the flour mixture and knead the dough well. You can add a little water and knead the dough. When it is done, cover the dough with a kitchen towel and allow it to rise.",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Image(image:  NetworkImage('https://static.toiimg.com/thumb/62620125.cms?width=630&height=420')),
                      ),
                      const SizedBox(height: 20.0,),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Step 5 :\n\nCook the bhatura and serve\nNow, put a kadhai on high flame and meanwhile, take equal quantities of the dough and roll big size puris (bhatura). When the oil is hot enough, carefully add these bhaturas to the oil and deep fry. Repeat with the rest of the dough. Then take a plate and serve Chola bhatura hot!",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(height: 20.0,),

                      const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Image(image:  NetworkImage('https://static.toiimg.com/thumb/65699460.cms?width=630&height=420',)),
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