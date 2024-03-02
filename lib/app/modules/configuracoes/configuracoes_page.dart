import 'package:flutter/material.dart';

class ConfiguracoesPage extends StatefulWidget {
  final String title;
  const ConfiguracoesPage({Key? key, this.title = 'ConfiguracoesPage'}) : super(key: key);
  @override
  ConfiguracoesPageState createState() => ConfiguracoesPageState();
}
class ConfiguracoesPageState extends State<ConfiguracoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}