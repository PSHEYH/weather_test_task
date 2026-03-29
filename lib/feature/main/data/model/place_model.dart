
import 'package:equatable/equatable.dart';

class Place extends Equatable{
  final String displayName;
  final double latitude;
  final double longitude;
  final Map<String, dynamic> address;

  const Place({
    required this.displayName,
    required this.latitude,
    required this.longitude,
    required this.address
  });

  @override
  List<Object?> get props => [displayName, latitude, longitude, address];

}