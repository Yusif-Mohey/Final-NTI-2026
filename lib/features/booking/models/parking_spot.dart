enum SpotStatus { available, occupied, selected }

class ParkingSpot {
  final String id;
  SpotStatus status;

  ParkingSpot({required this.id, required this.status});
}
