import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mk_zap_app/app/config/router_map.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final Widget? bottomNavigationBar;
  final bool showDrawer;

  const CustomScaffold({
    super.key,
    required this.body,
    this.title = "",
    this.bottomNavigationBar,
    this.showDrawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 34, 161, 153),
              Color.fromARGB(255, 20, 64, 60),
            ],
          ),
        ),
        child: body,
      ),
      drawer: showDrawer
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 161, 153),
                    ),
                    child: Text(
                      'MK Zap App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Campanhas'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Configurações'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Sair'),
                    onTap: () {
                      Navigator.pop(context);
                      Modular.to.pushReplacementNamed(RouterMap.login);
                    },
                  ),
                ],
              ),
            )
          : null,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
