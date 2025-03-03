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

        backgroundColor: Colors.white,
        body: Column(
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: CustomPaint(
                    painter: TopWave(),
                ),
              )
            ),
            
            Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.pressed)) {
                          return Theme.of(context).colorScheme.primary;
                        }
                        return null; // Use the component's default.
                      },
                    ),
                  ),
                  child: const Text('Sign In', style: TextStyle(fontSize: 25.0),),
                  onPressed: () {
                    // ...
                  },
                ),

                ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Theme.of(context).colorScheme.primary;
                    }
                    return null; // Use the component's default.
                  },
                ),
              ),
              child: const Text('Register', style: TextStyle(fontSize: 25.0),),
              onPressed: () {
                // ...
              },
            ),
              ]
            ),
          ),]
      ),
      ),
    );
  }
}


//Paintings

//HomePage top wave

  class TopWave extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
      Paint paint = Paint();
      Path path = Path();
  

      // Path number 1
  

      paint.color = Color(0xff0096C7);
      path = Path();
      path.lineTo(size.width * 0.04, size.height * 0.03);
      path.cubicTo(size.width * 0.04, size.height * 0.03, size.width * 0.04, size.height * 0.95, size.width * 0.04, size.height * 0.95);
      path.cubicTo(size.width * 0.04, size.height * 0.95, size.width * 0.16, size.height * 1.1, size.width * 0.27, size.height * 0.95);
      path.cubicTo(size.width * 0.36, size.height * 0.83, size.width * 0.45, size.height * 0.8, size.width * 0.45, size.height * 0.8);
      path.cubicTo(size.width * 0.45, size.height * 0.8, size.width * 0.6, size.height * 0.77, size.width * 0.73, size.height);
      path.cubicTo(size.width * 0.83, size.height * 1.14, size.width * 0.98, size.height * 0.84, size.width * 1.04, size.height * 0.69);
      path.cubicTo(size.width * 1.04, size.height * 0.69, size.width * 1.04, size.height * 0.03, size.width * 1.04, size.height * 0.03);
      path.cubicTo(size.width * 1.04, size.height * 0.03, size.width * 0.04, size.height * 0.03, size.width * 0.04, size.height * 0.03);
      path.cubicTo(size.width * 0.04, size.height * 0.03, size.width * 0.04, size.height * 0.03, size.width * 0.04, size.height * 0.03);
      canvas.drawPath(path, paint);
    }
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }
  }

