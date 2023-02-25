import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc_two/bloc/counter_event.dart';
import 'package:sample_bloc_two/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  int counter = 100;
  CounterBloc():super(CounterInitial(100)){
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterUpdateDecrementState(--counter));
    });

    on<CounterIncrementPressed>((event, emit) {
      emit(CounterUpdateIncrementState(++counter));
    });

    on<CounterResetPressed>((event, emit) {
      counter = 0;
      emit(CounterResetState(counter));
    });
  }
}