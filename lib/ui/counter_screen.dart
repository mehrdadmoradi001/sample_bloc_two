import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc_two/bloc/counter_bloc.dart';
import 'package:sample_bloc_two/bloc/counter_event.dart';
import 'package:sample_bloc_two/bloc/counter_state.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: ((context, state) {
                  if (state is CounterInitial) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 60),
                    );
                  }
                  if (state is CounterUpdateDecrementState) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 60),
                    );
                  }
                  if (state is CounterUpdateIncrementState) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 60),
                    );
                  }
                  if (state is CounterResetState) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 60),
                    );
                  }
                  return Text(
                    'Error',
                    style: TextStyle(fontSize: 60),
                  );
                }),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrementPressed());
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrementPressed());
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterResetPressed());
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
