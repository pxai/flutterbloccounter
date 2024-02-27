import 'package:flutter_test/flutter_test.dart';
import 'package:flutterbloccounter/state/counter_cubit.dart';

void main() {
  group('CounterState', () {
    test('should create CounterState with given values', () {
      final counterState = CounterState(counterValue: 5, wasIncremented: true);

      expect(counterState.counterValue, 5);
      expect(counterState.wasIncremented, true);
    });
  });
}
