import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_boardering_event.dart';
part 'on_boardering_state.dart';

class OnBoarderingBloc extends Bloc<OnBoarderingEvent, OnBoarderingState> {
  OnBoarderingBloc() : super(OnBoarderingInitial()) {
    on<OnBoarderingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
