import 'package:flutter/material.dart';

 const List<String> list = <String>['one','two','three','four'];

class FourRoute extends StatelessWidget{
  const FourRoute({
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
      home: const MyHomePage(title: 'aguassssssssssss'),
      debugShowCheckedModeBanner: false,
    );
  }
}

  class DropdownButtonExample extends StatefulWidget{
    const DropdownButtonExample({super.key});
    @override
    State<DropdownButtonExample> createState()=>_DropdownButtonExampleState();
  }
  class _DropdownButtonExampleState extends State<DropdownButtonExample>{
    String DropdownValue = list.first;

    @override 
    Widget build (Buildcontext){
return DropdownButton<String>(
  value: DropdownValue,
  icon: const Icon(Icons.arrow_downward),
  elevation: 15,
  style: const TextStyle(color: Colors.deepPurple,
  ),
  underline: Container(
    height: 2,
    color: Colors.deepPurpleAccent,
  ),
  onChanged: (String? value){
    setState(() {
      DropdownValue = value!;
    });
  },
  items: list.map<DropdownMenuItem<String>>((String value){
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
);
    }
  }
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(

       backgroundColor: Color.fromARGB(255, 5, 126, 31),
        title: Text(widget.title),
      ),
      body: Center(
       child: DropdownButtonExample(),
      ),
       );
        
  }
}
