import 'package:flutter/foundation.dart';
import 'package:manual_observer/listener_widgets/future_notifier.dart';

class CounterViewModel {
  ValueNotifier<int> counter = ValueNotifier(0);
  ValueNotifier<ValueStatus> state = ValueNotifier(ValueStatus.Idle);
  // FutureNotifier<Future<int>> fCounter = FutureNotifier();

  int testCounter = 0;

  void increment() async {
    state.value = ValueStatus.Waiting;
    await Future.delayed(Duration(milliseconds: 2000));
    state.value = ValueStatus.Success;
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }

  // CounterViewModel() {
    // fCounter.setValue(createFuture());
  // }

  // Future<int> createFuture() async {
  //   await Future.delayed(Duration(milliseconds: 3000));
  //   return testCounter++;
  // }

  // void incrementAsync() {
  //   fCounter.setValue(createFuture());
  // }



  // void getData() async {}
}

enum ValueStatus { Idle, Success, Waiting, Failed }

// class CounterViewModel extends ValueNotifier<int> {
//   CounterViewModel(value) : super(value);
//
//   void increment() {
//     value++;
//   }
//
//   void decrement() {
//     value--;
//   }
// }
