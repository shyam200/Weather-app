import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

//method to return location
  Future<void> getCurrrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      if (position.latitude != null && position.longitude != null) {
        _latitude = position.latitude;
        _longitude = position.longitude;
      }
    } catch (e) {
      print(e);
    }

    //  print('current location: $position');
  }

  double get latitude => _latitude;
  double get longitude => _longitude;
}
