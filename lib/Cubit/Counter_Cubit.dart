import 'package:basketball_app/Cubit/Counter_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void TreamAIncrement(int ButtonNumber) {}
}
