import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, this.title = 'DashboardPage'})
      : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.of(context).pushNamed(RouterMap.clientes);
    }

    if (index == 1) {
      Navigator.of(context).pushNamed(RouterMap.campanhas);
    }

    if (index == 2) {
      Navigator.of(context).pushReplacementNamed(RouterMap.login);
    }
  }

  List<Map<String, dynamic>> menuItems = [
    {
      'icon': Icons.people,
      'name': 'Clientes',
      'color': const Color.fromARGB(255, 244, 132, 62),
      'route': '/clientes'
    },
    {
      'icon': Icons.list,
      'name': 'Campanhas',
      'color': Colors.green,
      'route': '/campanhas'
    },
    {
      'icon': Icons.settings,
      'name': 'Configurações',
      'color': Colors.blue,
      'route': '/configuracoes'
    },
    // Adicione mais itens aqui
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(menuItems.length, (index) {
            return GestureDetector(
              onTap: () {
                Modular.to.pushNamed(menuItems[index]['route']);
              },
              child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: menuItems[index]['color'],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(menuItems[index]['icon'],
                              color: Colors.white, size: 30),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                menuItems[index]['name'],
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 5,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Campanhas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Sair',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
