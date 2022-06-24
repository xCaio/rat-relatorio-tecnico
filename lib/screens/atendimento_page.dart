import 'package:flutter/material.dart';
import 'package:relatorio_tecnico/screens/home_screen.dart';

class Atendimento extends StatefulWidget {
  const Atendimento({Key? key}) : super(key: key);

  @override
  State<Atendimento> createState() => _AtendimentoPageState();
}

class _AtendimentoPageState extends State<Atendimento> {
  var logoCabtec = Image.asset("assets/images/cabLogo.png");
  final dropValue = ValueNotifier('');
  final dropValueTipo = ValueNotifier('');
  final dropOpcoesTecnico = ['Abilio', 'Andrei', 'Bruno', 'Cássio', 'Carlos'];
  final dropOpcoesTipoAtendimento = ['Preventiva', 'Corretiva', 'Remanejamento', 'Entrega de Insumo', 'Análise', 'Entrega de Equipamento', 'Coleta de Equipamento', 'Entrega de Orçamento', 'Coleta de Orçamento', 'Outros'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          leading:
              Container(margin: EdgeInsets.only(left: 5), child: logoCabtec),
          title: Padding(
            padding: const EdgeInsets.only(left: 75),
            child: Text("Atendimento"),
          ),
          backgroundColor: Color.fromARGB(255, 10, 127, 180),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(27))),
        actions: [
          IconButton(icon: const Icon(Icons.exit_to_app), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },)
        ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ValueListenableBuilder(
                valueListenable: dropValue,
                builder: (BuildContext context, String value, _) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 45.0),
                    child: SizedBox(
                      width: 280,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          label: Text("Técnico"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)
                          )
                        ),
                        isExpanded: true,
                        hint: Center(child: const Text("Selecione o Técnico")),
                        value: (value.isEmpty) ? null : value,
                        onChanged: (escolha) => dropValue.value = escolha.toString(),
                        items: dropOpcoesTecnico
                            .map(
                              (op) => DropdownMenuItem(
                                value: op,
                                child: Text(op),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27.0),
            child: SizedBox(
              width: 280,
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  icon: Icon(Icons.date_range_outlined),
                  label: Text('Data'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27.0),
            child: SizedBox(
              width: 280,
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  icon: Icon(Icons.alarm),
                  label: Text('Hora'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                ),
              ),
            ),
          ),
          ValueListenableBuilder(
                valueListenable: dropValueTipo,
                builder: (BuildContext context, String value, _) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: SizedBox(
                      width: 280,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.settings),
                          label: Text("Atendimento"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)
                          )
                        ),
                        isExpanded: true,
                        hint: Center(child: const Text("Tipo de atendimento")),
                        value: (value.isEmpty) ? null : value,
                        onChanged: (escolha) => dropValueTipo.value = escolha.toString(),
                        items: dropOpcoesTipoAtendimento
                            .map(
                              (op) => DropdownMenuItem(
                                value: op,
                                child: Text(op),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  );
                }),
                Padding(
            padding: const EdgeInsets.only(top: 27.0),
            child: SizedBox(
              width: 280,
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  icon: Icon(Icons.chrome_reader_mode_rounded),
                  label: Text('Ticket Movidesk'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
