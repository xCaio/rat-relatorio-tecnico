import 'package:flutter/material.dart';
import 'package:relatorio_tecnico/screens/home_screen.dart';
import '../screens/atendimento_page.dart';

void main() {
  runApp(const HomePage());
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}