import 'package:flutter/material.dart';

import '../components/decoration_field_registration.dart';

class RegistrationClientScreen extends StatelessWidget {
  RegistrationClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Nome',
                      icon: Icons.person),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Telefone',
                      icon: Icons.phone),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('CNPJ',
                      icon: Icons.business),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Cidade',
                      icon: Icons.location_city),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Estado',
                      icon: Icons.location_on),
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
