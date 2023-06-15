import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  static const String id = '/loading_screen';

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoading = false;

  void getLocationData() async {
    setState(() {
      isLoading = true;
    });
    var weatherData = await WeatherModel().getLocationWeather();
    if (!mounted) {}
    setState(() {
      isLoading = false;
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  getLocationData();
                },
                child: const Text('Get Location'),
              ),
      ),
    );
  }
}
