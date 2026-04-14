import 'dart:async';
import 'package:bloc/bloc.dart';

part 'parking_event.dart';
part 'parking_state.dart';

class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  Timer? timer;
  int seconds = 0;
  double pricePerMinute = 2;

  ParkingBloc() : super(ParkingInitialState()) {
    on<StartParkingEvent>((event, emit) {
      seconds = 0;

      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        add(TickTimerEvent());
      });
    });

    on<TickTimerEvent>((event, emit) {
      seconds++;
      emit(ParkingRunningState(seconds));
    });

    on<EndParkingEvent>((event, emit) {
      timer?.cancel();

      double minutes = seconds / 60;
      double price = minutes * pricePerMinute;

      emit(ParkingFinishedState(seconds, price));
    });

    on<ResetParkingEvent>((event, emit) {
      seconds = 0;
      emit(ParkingInitialState());
    });
  }
}
