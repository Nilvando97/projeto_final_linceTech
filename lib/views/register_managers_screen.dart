import 'package:flutter/material.dart';

import '../components/decoration_field_registration.dart';

class RegistrationManagerstScreen extends StatelessWidget {
  RegistrationManagerstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de gerentes'),
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
                  decoration: getAuthenticationInputDecoration('CPF',
                      icon: Icons.document_scanner_outlined),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Estado',
                      icon: Icons.location_on),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Telefone',
                      icon: Icons.phone),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: getAuthenticationInputDecoration('Percentual de Comissão',
                      icon: Icons.percent),
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
