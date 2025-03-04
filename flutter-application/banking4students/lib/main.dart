import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget

      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 149, 199),
        colorScheme: ColorScheme(brightness: Brightness.dark, primary: Color.fromARGB(255, 0, 149, 199), onPrimary: Color.fromARGB(255, 0, 149, 199), secondary: Color.fromARGB(255, 0, 118, 182), onSecondary: Color.fromARGB(255, 0, 118, 182), error: Colors.red, onError: Colors.red, surface: Colors.white, onSurface: Colors.white)
      ),

      debugShowCheckedModeBanner: false,
      


      home: Scaffold(

        backgroundColor: Color.fromARGB(255, 0, 149, 199),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/home_bg.png"), fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                spacing: 10.5,
                children: [

                    SizedBox(height: 70,),
                    
                    SizedBox(
                    width: 250,
                    height: 250,
                    child: DecoratedBox(decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Logo.png'), fit: BoxFit.cover)
                    )),
                    ),

                    SizedBox(height: 250,),

                     ElevatedButton(
                        onPressed: () {},
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 12.0,
                            minimumSize: Size(190, 60),
                            textStyle: TextStyle(color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold),),
                        child: Text('Sign In'),
                      ),

                      SizedBox(height: 25,),

                       ElevatedButton(
                        onPressed: () {},
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 12.0,
                            minimumSize: Size(190, 60),
                            textStyle: const TextStyle(color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold)),
                        child: const Text('Register'),
                      ),                  
                    
                ],



              ),
            ),
            ),



        
      ),
      
    );
  }
}

