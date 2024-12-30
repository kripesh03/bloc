import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
sealed class ArithmeticEvent{

}


class IncrementEvent extends ArithmeticEvent{
  final int first;
  final int second;

  IncrementEvent(this.first,this.second);
}

class DecrementEvent extends ArithmeticEvent{
  final int first;
  final int second;

  DecrementEvent(this.first,this.second);
}

class MultiplyEvent extends ArithmeticEvent{
  final int first;
  final int second;

  MultiplyEvent(this.first,this.second);
}


class ArithmeticBloc extends Bloc<ArithmeticEvent,int>{
  ArithmeticBloc():super(0){
    on<IncrementEvent>((event,emit){
      final result = event.first + event.second;
      emit(result);
    });

      on<DecrementEvent>((event,emit){
      final result = event.first - event.second;
      emit(result);

    });

      on<MultiplyEvent>((event,emit){
      final result = event.first * event.second;
      emit(result);

    });
  }
}