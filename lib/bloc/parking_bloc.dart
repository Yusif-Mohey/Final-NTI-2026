import 'package:bloc/bloc.dart';

part 'parking_event.dart';
part 'parking_state.dart';

class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  ParkingBloc() : super(ParkingInitialState()) {
    on<StartParkingEvent>((event, emit) {});
  }
}
