import 'package:coffee/blocs/Registration/registration_model.dart';

class RegistrationValidator {
  static Map<String, String?> validate(RegistrationModel model) {
    final errors = <String, String?>{};

    // Check if the email is empty
    if (model.email.isEmpty) {
      errors['email'] = 'Email cannot be empty';
    } else if (!isValidEmail(model.email)) {
      // Check if the email format is valid
      errors['email'] = 'Please enter a valid email address';
    }

    if (model.firstName.isEmpty) {
      errors['firstName'] = 'First name cannot be empty';
    }
    if (model.lastName.isEmpty) {
      errors['lastName'] = 'Last name cannot be empty';
    }
    if (model.password.length < 6) {
      errors['password'] = 'Password must be at least 6 characters';
    }
    if (model.birthday.isEmpty) {
      errors['birthday'] = 'Birthday cannot be empty';
    }
    if (model.phoneNumber == null || model.phoneNumber!.isEmpty) {
      errors['phoneNumber'] = 'Phone number cannot be empty';
    }

    return errors;
  }

  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }
}
