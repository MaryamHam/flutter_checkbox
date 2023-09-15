import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool isChecked =false ;
var _key= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  debugShowCheckedModeBanner: false,
home: SafeArea(
  child:   Scaffold(
  backgroundColor: const Color.fromARGB(255, 222, 216, 199),
  
  
  body: Container(
   
    margin: EdgeInsets.all(40),
    child: Form(
      key: _key,
  
      child: Column(
      
        children: [
      
      CheckboxListTile(
      
        title: Text("Is Here"),
      
        selectedTileColor: Color.fromARGB(66, 241, 149, 149),
      
        selected: isChecked,
      
        value: isChecked,
      
        onChanged: (value){
      
          isChecked = value ?? false;
      
          setState(() {
      
            
      
          });
      
      },),
    SizedBox(height: 20,),
      TextFormField(
        validator: (value){
    
        if(value!.isEmpty || value ==null){
  
          return "Email can not be empty";
        }
        else if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)){
          return "Email not match email formate ";
        }
  
        },
        decoration: InputDecoration(labelText: "Email",
        border: OutlineInputBorder(),
        ),
      ),
      
      
      ElevatedButton(onPressed: 
      (){
        _key.currentState!.validate();
      }
      , child: Text("Login")),
      
      
      
      ]),
    ),
  ),
  
  
  
  
  
  
  
  
  
  ),
),

);
  }
}