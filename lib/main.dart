import 'package:flutter/material.dart';
import 'package:tix_id/views/Bioskop.dart';
import 'package:tix_id/views/Dashboard.dart';
import 'package:tix_id/views/Tiket.dart';
import 'package:tix_id/views/Tiketku.dart';
import 'package:tix_id/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splashcreen',
      routes: {
        '/splashcreen':(context)=>SplashScreen(),
        '/dashboard': (context)=>Dashboard(),
        '/tiket':(context)=>Ticket(),
        '/tiketku':(context)=>Myticket(),
        '/bioskop':(context)=>Bioskop()
      },
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001a3c),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/tix.jpg"),
              const SizedBox(height: 20),
              const Text(
                "TIX VIP, lebih seru, koin melimpah, dapat hadiah!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Gabung TIX VIP dan kumpulkan koin untuk mendapatkan hadiah dan diskon.",
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

