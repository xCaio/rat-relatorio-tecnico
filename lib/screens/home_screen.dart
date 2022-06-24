import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:relatorio_tecnico/screens/atendimento_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 127, 180),
      body: Column(
        children: [
          SizedBox(
            width: 500,
            child: Image.asset("assets/images/cabLogo.png"),
          ),
          Text(
            "ATENDIMENTO TÉCNICO",
            style: TextStyle(
                fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68.0),
            child: EasyElevatedButton(
              color: Colors.white,
              height: 60,
              width: 250,
                label: "INICIAR",
                labelColor: Colors.black,
                isRounded: true,
                isTrailingIcon: true,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Atendimento()));
                },
            ),
            ),
        ],
      ),
    );
  }
}
