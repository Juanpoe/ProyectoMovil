import 'package:flutter/material.dart';
import 'package:newapp/pages/registrarpage.dart';
 import 'package:newapp/pages/secondpage.dart';
  import 'package:newapp/pages/threepage.dart';


void main() => runApp(const MyApp());


 final ThemeData theme = ThemeData(
    primarySwatch: Colors.green,
);
class Palette {
  static const Color primary = Color.fromARGB(255, 5, 139, 46);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'Maxi-Clinic';
  
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: _title,
      
      home: Scaffold(
        
        appBar: AppBar (title: const Text(_title ), backgroundColor: Color.fromARGB(255, 5, 139, 46),),
        body: const MyStatefulWidget(),
         
      ),
      
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Maxi-Clinic',
                  
                  style: TextStyle(
                      color: Color.fromARGB(255, 5, 126, 31),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ) 
                
                ),
                const Image (image: NetworkImage('https://m.media-amazon.com/images/I/411xot3L+KL._AC_SX679_.jpg'),
width: 10,
                            ),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Iniciar Sesión',
                  style: TextStyle(fontSize: 20),
                )),
              
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre de usuario',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
            TextButton(
                  onPressed: (){
           
          },
     
              child: const Text('Olvidaste la Contraseña',style: TextStyle(color: Color.fromARGB(255, 5, 126, 31),) ,),
              
            ),
            Container(
                height: 50,
                
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                
                child: ElevatedButton(
                                   
                  
                  child: const Text('Iniciar'),
                  
                  onPressed: () {
                    
                    print(nameController.text);
                    print(passwordController.text);
                       Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const ThreeRoute()),);
            
                  },
                ),
            ),
            Row(
              children: <Widget>[
                const Text('No tienes una cuenta?'),
                TextButton(
                  child: const Text(
                    'Crear cuenta',
                    style: TextStyle(color: Color.fromARGB(255, 5, 126, 31),fontSize: 20),
                  ),
                  onPressed: () {
                          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => SecondRouteR()),
            );
                   },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}