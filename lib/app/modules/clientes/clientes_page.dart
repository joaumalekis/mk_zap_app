import 'package:flutter/material.dart';

class ClientesPage extends StatefulWidget {
  final String title;
  const ClientesPage({Key? key, this.title = 'ClientesPage'}) : super(key: key);
  @override
  ClientesPageState createState() => ClientesPageState();
}
class ClientesPageState extends State<ClientesPage> {
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