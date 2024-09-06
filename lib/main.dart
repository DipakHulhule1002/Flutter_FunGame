import 'package:flutter/material.dart';
import 'package:myapp/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'FunGame',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.signin, // Set the initial route
      onGenerateRoute: AppRoutes.generateRoute, // Provide the route generator function
    );
  }
}
