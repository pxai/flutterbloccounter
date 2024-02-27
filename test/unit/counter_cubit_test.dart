import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutterbloccounter/state/counter_cubit.dart';

void main() {
  group('CounterCubit', () {
    blocTest<CounterCubit, CounterState>(
      'emits [] when nothing is added',
      build: () => CounterCubit(),
      expect: () => [],
    );

    blocTest<CounterCubit, CounterState>(
      'emits state with counterValue 1 and wasIncremented true when increment is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.increment(),
      expect: () => [
        isA<CounterState>()
            .having((state) => state.counterValue, 'counterValue', 1)
            .having((state) => state.wasIncremented, 'wasIncremented', true),
      ],
    );

    blocTest<CounterCubit, CounterState>(
      'emits state with counterValue -1 and wasIncremented false when decrement is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.decrement(),
      expect: () => [
        isA<CounterState>()
            .having((state) => state.counterValue, 'counterValue', -1)
            .having((state) => state.wasIncremented, 'wasIncremented', false),
      ],
    );
  });
}
