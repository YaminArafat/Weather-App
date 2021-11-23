import 'package:geolocator/geolocator.dart';

class Location {
  Future getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      return position;
    } catch (e) {
      return e;
    }
  }
}
