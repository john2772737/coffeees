import 'package:flutter/material.dart';
import 'repositories/go_router.dart';


void main() {
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  const MyApp({required router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
//haha
  
    );
  }
}
