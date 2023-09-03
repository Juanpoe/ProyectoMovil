import 'package:flutter/material.dart';
 import 'package:newapp/pages/secondpage.dart';
 import 'package:newapp/pages/registrarpage.dart';
 const List<String> list = <String>['one','two','three','four'];

class ThreeRoute extends StatelessWidget{
  const ThreeRoute({
    super.key
  });


 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aguassssssss',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const HomePage(title: 'aguassssssssssss'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final TextEditingController _nombrepaciente = TextEditingController();
  final TextEditingController _especialidad = TextEditingController();
  final TextEditingController _fecha = TextEditingController();
  final TextEditingController _sede = TextEditingController();

  List<Map<String, dynamic>> _journals = [];

  bool _isLoading = true;

  void _showForm(int? id) async {
    _nombrepaciente.text = _nombrepaciente.text;
    _especialidad.text = _especialidad.text;
    _fecha.text = _fecha.text;
    _sede.text = _sede.text;

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Asignar cita",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  TextField(
                    controller: _nombrepaciente,
                    decoration:
                        const InputDecoration(hintText: 'Nombre del paciente'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _especialidad,
                    decoration: const InputDecoration(hintText: 'Especialidad'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _fecha,
                    decoration: const InputDecoration(hintText: 'Fecha'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _sede,
                    decoration: const InputDecoration(hintText: 'Sede'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Create New' : 'Update'),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Citas'),
        backgroundColor:Color.fromARGB(255, 5, 126, 31),
      ),
      body: Center(
        child: Column(children: <Widget>[
          if (_nombrepaciente.text != '' ||
              _especialidad.text != '' ||
              _fecha.text != '' ||
              _sede.text != '')
            Align(
                alignment: Alignment.centerLeft,
                child: new Text("Nombre paciente: " + _nombrepaciente.text)),
          if (_nombrepaciente.text != '' ||
              _especialidad.text != '' ||
              _fecha.text != '' ||
              _sede.text != '')
            Align(
                alignment: Alignment.centerLeft,
                child: new Text("Especialidad: " +
                    _especialidad.text +
                    '\nFecha: ' +
                    _fecha.text +
                    '\nSede: ' +
                    _sede.text)),
          if (_nombrepaciente.text != '' ||
              _especialidad.text != '' ||
              _fecha.text != '' ||
              _sede.text != '')
            Align(
              alignment: Alignment.centerLeft,
              child: new IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => _showForm(null),
              ),
            ),
          if (_nombrepaciente.text != '' ||
              _especialidad.text != '' ||
              _fecha.text != '' ||
              _sede.text != '')
            Align(
              alignment: Alignment.centerLeft,
              child: new IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    _nombrepaciente.text = '';
                    _especialidad.text = '';
                    _fecha.text = '';
                    _sede.text = '';
                  }),
            ),
          /*ListTile(
          title: Text("Nombre paciente: " + _nombrepaciente.text),
          subtitle: Text("Especialidad: " +
              _especialidad.text +
              '\nFecha: ' +
              _fecha.text +
              '\nSede: ' +
              _sede.text),
          trailing: SizedBox(
            width: 100,
            child: Row(
              children: [
                if (_nombrepaciente.text != '' ||
                    _especialidad.text != '' ||
                    _fecha.text != '' ||
                    _sede.text != '')
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => _showForm(null),
                  ),
                if (_nombrepaciente.text != '' ||
                    _especialidad.text != '' ||
                    _fecha.text != '' ||
                    _sede.text != '')
                  IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        _nombrepaciente.text = '';
                        _especialidad.text = '';
                        _fecha.text = '';
                        _sede.text = '';
                      }),
              ],
            ),
          ),
          tileColor: Colors.orange[200],
        ),*/
        ]),
      ),
      floatingActionButton: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 5, 126, 31),

        child: const Icon(Icons.add),
        onPressed: () =>{
                          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => SecondRoute()),
            )
                   }  ),
      );
  }
}
