import 'package:flutter/material.dart';

class NovoUsuarioPage extends StatefulWidget {
  final String title;
  const NovoUsuarioPage({Key? key, this.title = 'NovoUsuarioPage'}) : super(key: key);
  @override
  NovoUsuarioPageState createState() => NovoUsuarioPageState();
}
class NovoUsuarioPageState extends State<NovoUsuarioPage> {
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