import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/Registration/registration_bloc.dart'; // Import your RegisterBloc
import '../blocs/Registration/registration_model.dart'; // Import your user model

class Registerscreen extends StatelessWidget {
  const Registerscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController birthdayController = TextEditingController();
    final TextEditingController phoneNumberController = TextEditingController();

    return BlocProvider(
      create: (context) => RegistrationBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: firstNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                controller: lastNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              TextField(
                controller: birthdayController,
                decoration: const InputDecoration(labelText: 'Birthday'),
              ),
              TextField(
                controller: phoneNumberController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final userModel = RegistrationModel(
                    email: emailController.text,
                    firstName: firstNameController.text,
                    lastName: lastNameController.text,
                    password: passwordController.text,
                    birthday: birthdayController.text,
                    phoneNumber: phoneNumberController.text,
                  );

                  // Add the event to the bloc
                  context.read<RegistrationBloc>().add(RegisterButton(registrationModel: userModel));
                },
                child: const Text('Register'),
              ),
              BlocConsumer<RegistrationBloc, RegistrationState>(
                listener: (context, state) {
                  if (state is RegisterSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Registration successful!')),
                    );
                  } else if (state is RegisterFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registration failed: ${state.error}')),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is RegisterLoading) {
                    return const CircularProgressIndicator();
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
