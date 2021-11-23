import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_live/models/weather_model.dart';
import 'package:weather_live/screens/location_screen.dart';

const apiKey = '331533c0cc2197e929ea79cdb2a70e33';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;
  WeatherDetails parseData = WeatherDetails();
  @override
  void initState() {
    super.initState();
    waitForData();
  }

  void waitForData() async {
    var locationData = await parseData.getCurrentLocationData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        data: locationData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        )),
      ),
    );
  }
}
