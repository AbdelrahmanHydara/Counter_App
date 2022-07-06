import 'package:counter_app/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void plus()
  {
    counter++;
    emit(CounterPlusState());
  }

  void minus()
  {
    counter--;
    emit(CounterMinusState());
  }
}