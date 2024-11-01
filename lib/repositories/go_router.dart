import 'package:go_router/go_router.dart';
import '../pages/homeScreen.dart';
import '../pages/login.dart';
import '../pages/baseScreen.dart';
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name:
          'home', 
      path: '/',
      builder: (context, state) =>Basescreen(child: HomeScreen()),
    ),
     GoRoute(
      name:
          'login', 
      path: '/login',
      builder: (context, state) => Basescreen(child: Login()) ,
    ),
  ],
);
