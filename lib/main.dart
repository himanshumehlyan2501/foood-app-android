import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpref/menuPage.dart';
import 'package:sharedpref/splash%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var nameValue = " no value enter ";
  bool passwordVisible = false;
  static const String KEYNAME = "name";

  @override
  void initState() {
    super.initState();
    void initState() {
      // TODO: implement initState
      super.initState();
    }

    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        // gradient: RadialGradient(colors:[ Color(0xff96fbc4),Color(0xfff9f586)],
        //     center: Alignment.center
        //     ,stops: [0.0,1.0])
        decoration: const BoxDecoration(
            // gradient: RadialGradient(colors:[ Color(0xff96fbc4),Color(0xfff9f586)],
            // center: Alignment.center,stops: [0.0,1.0])
            image: DecorationImage(image: AssetImage('assets/Images/spices.jpg'), fit: BoxFit.fill,
        )
        ),

        child: Center(
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                // Text('!!! LOGIN PAGE !!! ',style: TextStyle(fontSize:30.0,color: Colors.red),),
                // SizedBox(height: 25,),
                TextField(
                  controller: nameController,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.white, width: 1.0),
                    ),
                    label: const Text('Email', style: TextStyle(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(color: Colors.white, width: 1.0)),
                    prefixIcon: const Icon(Icons.email, color: Colors.white,),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 23.0,),
                TextField(
                  controller: passwordController,
                  obscureText: !passwordVisible,
                  obscuringCharacter: "*",
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.white, width: 1.0),
                    ),
                    label: const  Text('Password', style: TextStyle(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0)),
                    prefixIcon: const Icon(Icons.lock, color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: const  Icon(Icons.remove_red_eye, color: Colors.white,)),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 11.0,),
                const Text("Don't Remember your Password? ", style:  TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15.0)
                ),
                const SizedBox(
                  height: 30.0,
                ),

                ElevatedButton(
                    onPressed: () async {
                      // var name = nameController.text.toString();
                      var prefs = await SharedPreferences.getInstance();

                      prefs.setString(KEYNAME, nameController.text.toString());

                      Navigator.push(context, MaterialPageRoute(builder: (context) => menuPage()));
                    },
                    child: const Text(' LOGIN ')),
                const SizedBox(height: 20,),
                Text(
                  nameValue,
                  style: const TextStyle(color: Colors.white),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getname = prefs.getString(KEYNAME);
    nameValue = getname != null ? nameValue : "no value";
    nameValue = getname != null ? getname : "no value";
    setState(() {});
  }
}
