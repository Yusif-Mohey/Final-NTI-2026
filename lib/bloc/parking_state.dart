part of 'parking_bloc.dart';

abstract class ParkingState {}

class ParkingInitialState extends ParkingState {}

class ParkingRunningState extends ParkingState {
  final int seconds;

  ParkingRunningState(this.seconds);
}

class ParkingFinishedState extends ParkingState {
  final int totalSeconds;
  final double price;

  ParkingFinishedState(this.totalSeconds, this.price);
}
