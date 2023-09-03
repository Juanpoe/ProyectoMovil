
import 'package:flutter/material.dart';
import 'package:newapp/main.dart';
 
class SecondRouteR extends StatelessWidget{
  const SecondRouteR({
    super.key
  });


  
 static const String _title = 'REGISTRARSE';
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
 TextEditingController lastnameController = TextEditingController();
 TextEditingController documentController = TextEditingController();
 
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
                  'REGISTRARSE',
                  
                  style: TextStyle(
                      color: Color.fromARGB(255, 5, 126, 31),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ) 
                
                ),
                 const Image (image: NetworkImage('https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81DxaNJSG5L.jpg'),
width: 5,
                            ),
                     

          
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                ),
              ),
            ),
             Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: lastnameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Apellido',
                ),
              ),
            ),
             Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: documentController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Documento de Identificación',
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
     
              child: const Text('Completar registro',style: TextStyle(color: Color.fromARGB(255, 5, 126, 31),) ,),
              
            ),

            Container(
                height: 50,
                
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                
                child: ElevatedButton(
                                   

                  child: const Text('Registrar'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                     print(lastnameController.text);
                      print(documentController.text);
                  },
                )
            ),
            
            Row(
              children: <Widget>[
                const Text('Ya tienes una cuenta?'),
                TextButton(
                  child: const Text(
                    'Iniciar Sesion',
                    style: TextStyle(color: Color.fromARGB(255, 5, 126, 31),fontSize: 20),
                  ),
                  onPressed: () {
                     Navigator.push(context, 
            MaterialPageRoute(builder: (context) => MyApp()),
            );  ;
                   },
                   
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
