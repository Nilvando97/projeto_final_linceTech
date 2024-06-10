import 'package:flutter/material.dart';

import '../components/decoration_field_registration.dart';

class RegisterVehiclesScreen extends StatelessWidget {
  RegisterVehiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastar Veículos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Marca',
                      icon: Icons.directions_car),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Modelo',
                      icon: Icons.directions_car),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Placa',
                      icon: Icons.confirmation_number),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Ano de Fabricação',
                      icon: Icons.calendar_today),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Custo da Diária de Aluguel',
                      icon: Icons.attach_money),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cadastrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
