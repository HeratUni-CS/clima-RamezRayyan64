import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: LoadingScreen.id,
      routes: {
        LoadingScreen.id: (context) => const LoadingScreen(),
        LocationScreen.id: (context) => const LocationScreen(),
        CityScreen.id: (context) => const CityScreen(),
      },
    );
  }
}
