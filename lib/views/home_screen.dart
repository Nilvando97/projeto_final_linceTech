import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/home_state.dart';

class HomeScreen extends StatelessWidget {
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Clientes'),
    Text('Gerentes'),
    Text('Veículos'),
    Text('Aluguéis'),
  ];

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SS Automóveis'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/registerClients');
            },
            child: const Card(
              elevation: 4.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.person, size: 50.0),
                    Text(
                      'Cadastrar \nClientes',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () { Navigator.pushNamed(context, '/registerManagers');},
            child: const Card(
              elevation: 4.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.person_outline, size: 50.0),
                    Text(
                      'Cadastrar \nGerentes',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.pushNamed(context, '/registerVehicles');},
            child: const Card(
              elevation: 4.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.directions_car, size: 50.0),
                    Text(
                      'Cadastrar \nVeículos',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Card(
              elevation: 4.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.assignment, size: 50.0),
                    Text('Aluguéis ', style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Gerentes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Veículos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Aluguéis',
          ),
        ],
        currentIndex: homeState.selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          homeState.selectIndex(index);
        },
      ),
    );
  }
}
