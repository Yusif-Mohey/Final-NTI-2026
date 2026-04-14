part of 'parking_bloc.dart';

abstract class ParkingEvent {}

class StartParkingEvent extends ParkingEvent {
  final String spotId;

  StartParkingEvent(this.spotId);
}

class TickTimerEvent extends ParkingEvent {}

class EndParkingEvent extends ParkingEvent {}

class ResetParkingEvent extends ParkingEvent {}
