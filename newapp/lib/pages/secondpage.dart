import 'package:flutter/material.dart';
import 'package:newapp/pages/threepage.dart';
const List<String> list = <String>['Medico General','Anestesiología', 'Cardiología', 'Endocrinología', 'Gastroenterología'];
void main() {
  runApp(SecondRoute());
}
class SecondRoute extends StatefulWidget {
 @override
 _RegisterPageState createState() => _RegisterPageState();
}

String valueDefect = "Medico General";

class _RegisterPageState extends State<SecondRoute> {
 GlobalKey<FormState> keyForm = new GlobalKey();
 TextEditingController  nameCtrl = new TextEditingController();
 TextEditingController  emailCtrl = new TextEditingController();
 TextEditingController  mobileCtrl = new TextEditingController();
 TextEditingController  passwordCtrl = new TextEditingController();
 TextEditingController  repeatPassCtrl = new TextEditingController();
String dropdownValue = list.first;
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
     home: new Scaffold(
       appBar: new AppBar(
         title: new Text('Asignar cita Medicas'),
       ),
       body: new SingleChildScrollView(
         child: new Container(
           margin: new EdgeInsets.all(20.0),
           child: new Form(
             key: keyForm,
             child: formUI(),
           ),
         ),
       ),
     ),
   );
 }

 formItemsDesign(icon, item) {
   return Padding(
     padding: EdgeInsets.symmetric(vertical: 5),
     child: Card(child: ListTile(leading: Icon(icon), title: item)),
   );
 }

 String gender = 'hombre';

 Widget formUI() {
   return  Column(
     children: <Widget>[
       formItemsDesign(
           Icons.person,
           TextFormField(
             controller: nameCtrl,
             decoration: new InputDecoration(
               labelText: 'Nombre del Paciente',
             ),
            
           )),
       Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              
              children:<Widget> [
                Text('Especialidad  :  ',
                textAlign: TextAlign.right,
                style:TextStyle(color: Colors.blueGrey,fontSize: 16,),),
                SizedBox(
                  width:230,
                
                 
                  // child: DropdownButton<String>(
                  child:DropdownButtonFormField(
                    
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide( color: Colors.green)
                      ) 
                    ),
                    value: dropdownValue,
                    // icon: const Icon(Icons.arrow_downward),
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    // elevation: 10,
                    iconDisabledColor: Colors.red,
      
                    style: const TextStyle(color: Colors.black),

                    // underline: Container(
                    //   height: 2,
                    //   color: Colors.deepPurpleAccent,
                    // ),


                    onChanged: (String? value){
                      setState(() {
                        dropdownValue= value!;
                      });
                    },

                    items: list.map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),

                ),
     ),],
            ),
          ),
              formItemsDesign(
           Icons.calendar_month,
           TextFormField(

             controller: emailCtrl,
               decoration: new InputDecoration(
                 labelText: 'Fecha',
               ),
             
               )),
       
       formItemsDesign(
           Icons.location_city,
           TextFormField(
             decoration: InputDecoration(
               labelText: 'Sede',
             ),
           )),
   GestureDetector(
   onTap: (){
                     Navigator.push(context, 
            MaterialPageRoute(builder: (context) => ThreeRoute()),
            );  
                   
    
   },child: Container(
         margin: new EdgeInsets.all(30.0),
         alignment: Alignment.center,
         decoration: ShapeDecoration(
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0)),
               color: Colors.green,
       
         ),
         child: Text("Agendar",
         
             style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontWeight: FontWeight.w500)),
         padding: EdgeInsets.only(top: 16, bottom: 16),
       ))
     ],
   );
 }




   
 }