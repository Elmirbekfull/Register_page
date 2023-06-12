
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final _textcontroller = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        leading: Image.asset("assets/images/Union.png", color: Colors.black,),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
          Text("Каттоо", style: GoogleFonts.playfairDisplay(
            fontSize: 30,
            color: Colors.grey,
          
            fontWeight: FontWeight.bold
          ),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                children: [
                  TextField(
                    controller: _textcontroller,
                    decoration:
                     InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: (){
                        _textcontroller.clear();
                      }, icon: const Icon(
                        Icons.clear,
                      )),
                      labelText: "Email",
                     ),
                  ),
                  SizedBox(height: 40,),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                  
                      }, icon: Icon(Icons.remove_red_eye)),
                      border: OutlineInputBorder(),
                    labelText: 'Сыр сөз ойлоп табыңыз',
                    ),
                  ),
                  SizedBox(height: 40,),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                  
                      }, icon: Icon(Icons.remove_red_eye)),
                      border: OutlineInputBorder(),
                    labelText: 'Сыр сөзүңүздү жазыңыз',
                    ),
                  ),
                ],
              ),
          ),
          SizedBox(height: 20,),
          OutlinedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue), 
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(218, 255, 255, 255)),
                    minimumSize: MaterialStateProperty.all(Size(280, 50)),           
                    ),
            onPressed: (){}, child:
          Text("Улантуу", style: GoogleFonts.cormorantInfant(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),),
          ),
          SizedBox(height: 20,),
          Text("ЖОЖго тапшыруу мүмкүнчүлүгүн берет", 
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold
        
           
          ),
          ),
          Text("Жогорку окуу жайларга тапшыруу үчүн" , style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),),
           Text("абитуриенттерге чакан тиркеме", style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 30,),






           
          // SizedBox(height: 130,),
          Text("Кошумча   маалымат", style: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Colors.black
          ),),
          // SizedBox(height: 1,),
          const Row(
           
            
            children: [
              SizedBox(width: 130, height: 30,),
              Icon(Icons.telegram, color: Colors.blue,),
              SizedBox(width: 2,),
              Icon(Icons.facebook, color: Colors.blue,)
              
            ],
          ),
          SizedBox(height: 30,),
          Text("2023", style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700
          ),)
          // SizedBox(height: 10, width: 10,),
          // Padding(padding: EdgeInsets.symmetric(horizontal: 1,),
          // child: Text("2023", style: TextStyle(
          //   fontWeight: FontWeight.w700,
          //   fontSize: 10,
          //   color: Colors.grey
          // ),),
          // ),
          
        ],
      ),
    );
  }
}

