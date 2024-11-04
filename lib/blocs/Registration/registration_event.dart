part of 'registration_bloc.dart';

sealed class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class RegisterButton extends RegistrationEvent {
  final RegistrationModel registrationModel;

  RegisterButton({required this.registrationModel});
}
