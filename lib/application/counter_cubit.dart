import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'counter_state.dart';

@injectable
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 1, value: 0));

  void increment(String price) {
    double tt = double.parse(price);
    emit(
      CounterState(
        counterValue: state.counterValue + 1,
        value: state.counterValue * tt,
      ),
    );
  }

  void decrement(String price) {
    double tt = double.parse(price);
    emit(
      CounterState(
          counterValue: state.counterValue - 1, value: state.counterValue * tt),
    );
  }
}
