import 'package:flutter/material.dart';

import 'views/register_client_screen.dart';
import 'views/register_managers_screen.dart';

void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => RegistrationManagerstScreen(),},
    );
  }
}