import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'card_form_event.dart';
part 'card_form_state.dart';

class CardFormBloc extends Bloc<CardFormEvent, CardFormState> {
  CardFormBloc() : super(CardFormInitial());

  @override
  Stream<CardFormState> mapEventToState(CardFormEvent event) async* {
    if (event is CardFormAddCard) {
      yield CardFormInLoading();
      
      bool isValid = true;

      if (isValid) {}
      await Future.delayed(Duration(seconds: 2));
      yield CardFormSuccess();
    } else {
      yield CardFormFailrure(errorMessage: 'Invalid card data');
    }
  }
}
