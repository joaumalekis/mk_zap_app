import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';
import 'package:mk_zap_app/app/widgets/custom_scaffold.dart';

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
    if (_selectedIndex != index && index == 0) {
      Navigator.of(context).pushNamed(RouterMap.dashboard);
    }

    if (_selectedIndex != index && index == 1) {
      Navigator.of(context).pushNamed(RouterMap.campanhas);
    }

    if (_selectedIndex != index && index == 2) {
      Navigator.of(context).pushReplacementNamed(RouterMap.login);
    }

    setState(() {
      _selectedIndex = index;
    });
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
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
    );
  }
}
