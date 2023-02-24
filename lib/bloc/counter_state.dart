abstract class CounterState {}

class CounterInitial extends CounterState {
  int counter;

  CounterInitial(this.counter);
}

class CounterUpdateDecrementState extends CounterState{
  int counter;
  CounterUpdateDecrementState(this.counter);
}

class CounterUpdateIncrementState extends CounterState{
  int counter;
  CounterUpdateIncrementState(this.counter);
}

class CounterResetState extends CounterState{
  int counter;
  CounterResetState(this.counter);
}