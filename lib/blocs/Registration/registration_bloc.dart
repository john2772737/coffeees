import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'registration_model.dart';
import 'registration_validator.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<RegisterButton>(_onRegisterButtonPressed);
  }
  Future<void> _onRegisterButtonPressed(RegisterButton event, Emitter<RegistrationState> emit) async {
    emit(RegisterLoading()); // Emit loading state

   
    try {

      // Here you would typically send jsonData to your backend
      print(event.registrationModel.toJson()); // For demonstration purposes

      // Simulating a successful registration
      await Future.delayed(Duration(seconds: 2)); // Simulate network delay

      emit(RegisterSuccess()); // Emit success state
    } catch (error) {
      emit(RegisterFailure(error.toString())); // Emit failure state if there's an error
    }
  }
}
