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

      home: Welcome()
      
    );
  }
}

//Welcome

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignIn()),
                          );
                        },
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 12.0,
                            minimumSize: Size(190, 60),
                            textStyle: TextStyle(color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold),),
                        child: Text('\$ign In'),
                      ),

                      SizedBox(height: 25,),

                       ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()),
                        );
                        },
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 12.0,
                            minimumSize: Size(190, 60),
                            textStyle: const TextStyle(color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold)
                            ),
                        child: const Text('\$ign Up'),
                      ),                  
                    
                ],



              ),
            ),
            ),



        
      );
  }
}

//Sign Up

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 0, 149, 199),

      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Color.fromARGB(255, 0, 149, 199),
        shadowColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

     body: DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/signup_bg.png"), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                    ),
                  ),
               ),

            ),

            SizedBox(height: 25,),

           Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                    ),
                  ),
               ),

            ),

             SizedBox(height: 25,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                    ),
                  ),
               ),

            ),

            SizedBox(height: 25,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
               ),

            ),

            SizedBox(height: 25,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
               ),

            ),

            SizedBox(height: 50,),
           

            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                    elevation: 12.0,
                    minimumSize: Size(190, 60),
                    textStyle: const TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold)
                    ),
              child: Text("Sign Up"))
          ],
        ),
      ),
      ),
    );
  }
}

//Sign In

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 0, 149, 199),

      appBar: AppBar(
        title: Text("Sign In"),
        backgroundColor: const Color.fromARGB(255, 0, 149, 199),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

     body: DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/signin_bg.png"), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                    ),
                  ),
               ),

            ),

            SizedBox(height: 25,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),

               child: Material(
                elevation: 10,
                color: Colors.transparent,
                shadowColor: const Color.fromARGB(104, 107, 10, 204),

                child: TextField(
                  style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
               ),

            ),

            SizedBox(height: 150,),
           

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Main()),
                          );
              },
              style: ElevatedButton.styleFrom(
                    elevation: 12.0,
                    minimumSize: Size(190, 60),
                    textStyle: const TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold)
                    ),
              child: Text("Sign In"))
          ],
        ),
      ),
      ),
    );
  }
}

//Main screen

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Color.fromARGB(255, 0, 149, 199),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150,),
                Center(),              
                
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 65.0),
                  child: Row(children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/profile_pic.png"), fit: BoxFit.cover),
                      ),
                    ),
                    ),

                    SizedBox(width: 20,),

                    Text('John \nDoe', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),),

                  ],),
                  
                  
                ),
                
                SizedBox(height: 25,),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 25,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 35,),
                      ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Cards'),),
                      SizedBox(width: 35,),
                      ElevatedButton(onPressed: () {},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Coupons'),),
                      SizedBox(width: 35,),
                      ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Saving'),),
                      SizedBox(width: 35,),
                      ElevatedButton(onPressed: () {},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Investments'),),
                      SizedBox(width: 35,),
                      ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Converter'),),
                      SizedBox(width: 35,),
                    ],
                  ),
                ),

                Center(
                  child: Padding(padding: EdgeInsets.all(60.0),
                      child: SizedBox(
                        width: 450,
                        height: 180,
                        child: DecoratedBox(decoration: BoxDecoration(
                            color: Color.fromRGBO(54, 134, 184, 1),
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: <BoxShadow>[BoxShadow(color: const Color.fromARGB(91, 0, 0, 0), blurRadius: 20.0, blurStyle: BlurStyle.outer)],
                          ),
                        child: Row(
                          children: [
                            SizedBox(width: 32,),
                            SizedBox(
                              width: 125,
                              height: 80,
                              child: DecoratedBox(decoration: BoxDecoration(
                                  color: Color.fromRGBO(208, 228, 241, 1),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: <BoxShadow>[BoxShadow(color: const Color.fromARGB(33, 0, 0, 0), blurRadius: 20.0, blurStyle: BlurStyle.outer)],
                                ),),
                            ),

                            SizedBox(width: 15,),
                            
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 45,),
                                Text('VISA Debit'),
                                SizedBox(height: 25,),
                                Text('(MKD) Balance:'),
                                SizedBox(height: 10,),
                                Text('20.000,00'),
                              ],
                            )
                          ],
                        ),
                        ),
                      ),
                    )

                ),
                
                
              ],
            ),
        ),
    );
  }
}

