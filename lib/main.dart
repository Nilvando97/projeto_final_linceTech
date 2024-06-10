import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/home_state.dart';
import 'views/home_screen.dart';
import 'views/register_client_screen.dart';
import 'views/register_managers_screen.dart';
import 'views/register_vehicles_screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => HomeState()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/registerClients': (context) => RegistrationClientScreen(),
        '/registerManagers': (context) => RegistrationManagerstScreen(),
        '/registerVehicles': (context) => RegisterVehiclesScreen(),
      },
    );
  }
}
