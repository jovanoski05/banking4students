import 'package:flutter/material.dart';
const List<String> list = <String>['EVN', 'Internet Provider', 'Water Supplier'];
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

            child: ListView(
              
              children: [
                SizedBox(height: 100,),
                Center(),
                Header(),
                
                SizedBox(height: 25,),

                Menu(),

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

// Coupons

class Coupons extends StatelessWidget {
  const Coupons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Color.fromARGB(255, 0, 149, 199),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
            ),

            child: ListView(
              
              children: [
                SizedBox(height: 100,),
                Center(),              
                
                
                Header(),
                
                SizedBox(height: 25,),

                Menu(),

                Coupon(),
                Coupon(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextButton(
                        onPressed: () {}, 
                        child: Text("Add Coupon", style: TextStyle(color: Colors.white),),
                      ),
                ),
                
                
              ],
            ),
        ),
    );
  }
}

class ViewCoupon extends StatelessWidget {
  const ViewCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Color.fromARGB(255, 0, 149, 199),

      appBar: AppBar(
        title: Text("Coupon"),
        backgroundColor: const Color.fromARGB(255, 0, 149, 199),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
            ),

            child: ListView(
              
              children: [              
                CouponCard(),

                
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text("Value", style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold),),
                      SizedBox(width: 55,),
                      SizedBox(
                        width: 140,
                        height: 70,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 55.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text("Valid \nuntil", style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold),),
                      SizedBox(width: 55,),
                      SizedBox(
                        width: 140,
                        height: 70,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 80,),

                  SizedBox(
                    width: 200,
                    height: 100,
                    child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/barcode.png"), fit: BoxFit.scaleDown)
                    ),
                  )
                  )
                  
                
              ],
            ),
        ),
    );
  }
}

class Savings extends StatelessWidget {
  const Savings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 149, 199),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
            ),

            child: ListView(

              children: [
                SizedBox(height: 100,),
                Center(),              
                
                
                Header(),
                
                SizedBox(height: 25,),

                Menu(),

                SizedBox(height: 25,),

                SavingComp(name: "Car", saved: 6500, goal: 12000,),
                SizedBox(height: 25,),
                SavingComp(name: "House")


              ],

            ),
        ),

        
    );
  }
}

class PP50_Payer extends StatelessWidget {
  const PP50_Payer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 0, 149, 199),

        appBar: AppBar(
        title: Text("PP50"),
        backgroundColor: const Color.fromARGB(255, 0, 149, 199),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pp50.png"), fit: BoxFit.cover),
            ),

            child: ListView(
              children: [
                Center(),
                SizedBox(height: 50,),
                Center(child: Text('Payer', style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800
                ),),),
                
                SizedBox(height: 25,),
                InputField(hint: "Name and surname",),
                InputField(hint: "Bank",),
                InputField(hint: "Tax number (EMBS)",),
                InputField(hint: "Reference number - debt",),
                InputField(hint: "Purpose of payment",),

                Padding(padding: EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PP50_Recipient()),
                    );},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Next'),),
                ),
                
              ],
            )
        ),
    );
  }
}

class PP50_Recipient extends StatelessWidget {
  const PP50_Recipient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 0, 149, 199),

        appBar: AppBar(
        title: Text("PP50"),
        backgroundColor: const Color.fromARGB(255, 0, 149, 199),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pp50.png"), fit: BoxFit.cover),
            ),

            child: ListView(
              children: [
                Center(),
                SizedBox(height: 50,),
                Center(child: Text('Recipient', style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800
                ),),),
                
                SizedBox(height: 25,),
                InputField(hint: "Name of the Recipient",),
                InputField(hint: "Bank",),
                InputField(hint: "Account",),
                InputField(hint: "Amount",),
                InputField(hint: "Purpose Account",),
                InputField(hint: "Beneficiary Account",),
                
                Padding(padding: EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PP50_final()),
                    );},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Next'),),
                ),
                             

              ],
            )
        ),
    );
  }
}

class PP50_final extends StatelessWidget {
  const PP50_final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 0, 149, 199),

        appBar: AppBar(
        title: Text("PP50"),
        backgroundColor: const Color.fromARGB(255, 0, 149, 199),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pp50.png"), fit: BoxFit.cover),
            ),

            child: Column(
              children: [
                Center(),
                SizedBox(height: 50,),
                Center(child: Text('Recipient', style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800
                ),),),
                
                SizedBox(height: 25,),

                Text('Program & Indicative Program ', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800
                ),),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HorizontalInputField(hint: "",),
                    SizedBox(width: 25,),
                    HorizontalInputField(hint: ""),
                    SizedBox(width: 25,),
                    HorizontalInputField(hint: ""),
                  ],
                ),

                SizedBox(height: 25,),

                InputField(hint: "Place of payment",),
                
                Padding(padding: EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Main()),
                    );},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Finish Payment'),),
                ),
                             

              ],
            )
        ),
    );
  }
}

class PayBills extends StatelessWidget {
  const PayBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 149, 199),

        appBar: AppBar(
        title: Text("Pay Bills"),
        backgroundColor: const Color.fromARGB(255, 0, 149, 199),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),

        body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pp50.png"), fit: BoxFit.cover),
            ),

            child: ListView(
              children: [
                Center(),
                SizedBox(height: 50,),
                
                DropdownButtonExample(),
                
                SizedBox(height: 25,),
                InputField(hint: "Bill Number/ID",),
                
                Padding(padding: EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Main()),
                    );},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Pay'),),
                ),
                             

              ],
            )
        ),
    );
  }
}

//Components
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            
            
          );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 25,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 35,),
                ElevatedButton(onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Main()),
                      );
                    }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Cards'),),
                SizedBox(width: 35,),
                ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Coupons()),
                    );},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Coupons'),),
                SizedBox(width: 35,),
                ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Savings()),
                    );}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Saving'),),
                SizedBox(width: 35,),
                ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PP50_Payer()),
                    );},  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('PP50'),),
                SizedBox(width: 35,),
                ElevatedButton(onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PayBills()),
                    );}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero), foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(6, 86, 190, 1)), child: Text('Pay bills'),),
                SizedBox(width: 35,),
              ],
            ),
          );
  }
}

class Coupon extends StatelessWidget {
  const Coupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
              child: SizedBox(
                width: 450,
                height: 180,
                child: DecoratedBox(decoration: BoxDecoration(
                    color: Color.fromRGBO(54, 134, 184, 1),
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: <BoxShadow>[BoxShadow(color: const Color.fromARGB(91, 0, 0, 0), blurRadius: 20.0, blurStyle: BlurStyle.outer)],
                  ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    SizedBox(
                      width: 125,
                      height: 80,
                      child: DecoratedBox(decoration: BoxDecoration(
                          color: Color.fromRGBO(34, 128, 69, 1),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: <BoxShadow>[BoxShadow(color: const Color.fromARGB(33, 0, 0, 0), blurRadius: 20.0, blurStyle: BlurStyle.outer)],
                        ),
                        ),
                    ),

                    SizedBox(height: 15,),
                    TextButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ViewCoupon()),
                      );
                    }, child: Text('Market Coupon', style: TextStyle(color: Colors.white),)),
                    
                    
                    
                  ],
                ),
                ),
              ),
            )

        );
  }
}

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 70),
      child: SizedBox(

      width: 250,
      height: 150,

      child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromRGBO(54, 134, 184, 1),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 65, vertical: 25),
              child: DecoratedBox(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white
            )),
            )
            
    ),
    ),

    );
  }
}

class SavingComp extends StatelessWidget {
  const SavingComp({
    super.key, 
    this.name = "Saving",
    this.saved = 0,
    this.goal = 1
    });

  final String name;
  final double saved;
  final double goal;

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        
        Column(
          children: [
            Text(name, style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            SizedBox(
              width: 320,
              height: 150,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Color.fromARGB(138, 81, 205, 176), border: Border.all(color: Color.fromRGBO(30, 250, 151, 0.4), width: 3)),
                  child:Row(children: [
                    
                    SizedBox(
                    width: (saved/goal)*320,
                    height: 150,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Color.fromARGB(138, 81, 205, 176), border: Border.all(color: Color.fromRGBO(30, 250, 151, 0.4), width: 6)),
                    ),
                  )
                  ],)
                ),          
            ),
            SizedBox(height: 20,),
            Text("Svaed: (MKD) "+saved.toString()+"           Goal: (MKD) "+goal.toString(), style: TextStyle(fontSize: 15),),
          ],
        )

        
      ]
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.hint = "Name"
    });

    final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),

          child: TextField(
          style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              hintStyle: TextStyle(color: Colors.black),
              contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
            ),
          ),
        );
  }
}

class HorizontalInputField extends StatelessWidget {
  const HorizontalInputField({
    super.key,
    this.hint = "Name"
    });

    final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 100,
    child: TextField(
          style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              hintStyle: TextStyle(color: Colors.black),
              contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
            ),
          ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80),
      child:Center(
        child: DropdownButton<String>(
      value: dropdownValue,
      iconSize: 30,
      alignment: Alignment.center,
      
      elevation: 16,
      dropdownColor: Color.fromRGBO(54, 134, 184, 1),
      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 30, ),
      
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items:
          list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
    ),
      ) 
    );
  }
}