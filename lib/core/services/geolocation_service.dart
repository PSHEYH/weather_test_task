

import 'package:geolocator/geolocator.dart';
import 'package:weather_test_app/core/constants/app_constants.dart';
import 'package:weather_test_app/core/utils/logger/logger.dart';
import 'package:weather_test_app/feature/main/data/model/coordinates_model.dart';

class GeolocationService{

  Coordinates? _currentPosition;

  Future<Coordinates> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Logger.error('Location services are disabled.');
      _currentPosition = AppConstants.kDefaultCoordinates;
      return _currentPosition!;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Logger.error('Location permissions are denied');
        _currentPosition = AppConstants.kDefaultCoordinates;
        return _currentPosition!;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      _currentPosition = AppConstants.kDefaultCoordinates;
      Logger.error(
          'Location permissions are permanently denied, we cannot request permissions.');
      return _currentPosition!;
    }

    Position position = await Geolocator.getCurrentPosition();
    _currentPosition = Coordinates(latitude: position.latitude, longitude: position.longitude);
    return _currentPosition!;
  }

  Future<Coordinates> getCurrentPosition() async{
    if(_currentPosition != null){
      return _currentPosition!;
    }
    return await determinePosition();
  }


}