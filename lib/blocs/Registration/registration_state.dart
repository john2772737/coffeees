

part of 'registration_bloc.dart';

sealed class RegistrationState extends Equatable {
  const RegistrationState();
  
  @override
  List<Object> get props => [];
}

final class RegistrationInitial extends RegistrationState {}


class RegistrationInvalid extends RegistrationState {
  final Map<String, String?> errors;
  
  RegistrationInvalid(this.errors);

  @override
  List<Object> get props => [errors]; 
}

class RegisterLoading extends RegistrationState {}

class RegisterSuccess extends RegistrationState {}

class RegisterFailure extends RegistrationState {
  final String error;

  RegisterFailure(this.error);
}
