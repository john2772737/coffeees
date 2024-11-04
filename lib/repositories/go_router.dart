import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/Registration/registration_bloc.dart'; // Ensure this import is correct
import '../pages/homeScreen.dart';
import '../pages/login.dart';
import '../pages/baseScreen.dart';
import '../pages/registerScreen.dart';

final router = GoRouter(
  initialLocation: '/register',
  routes: [
    GoRoute(
      name: 'home', 
      path: '/',
      builder: (context, state) => Basescreen(child: HomeScreen()),
    ),
    GoRoute(
      name: 'login', 
      path: '/login',
      builder: (context, state) => Basescreen(child: Login()),
    ),
    GoRoute(
      name: 'register', 
      path: '/register',
      builder: (context, state) => BlocProvider(
        create: (context) => RegistrationBloc(), // Provide the RegistrationBloc here
        child: Basescreen(child: Registerscreen()), // Use RegisterScreen with the BlocProvider
      ),
    ),
  ],
);
