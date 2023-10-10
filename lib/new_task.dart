import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/home_screen.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
   TextEditingController dateController  = TextEditingController();
  @override
  void initState() {
   
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
     
    return Scaffold(
      appBar: AppBar(
        
        
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
          ),
        ),
        title: const Center(
          child:  Text(
            "New Task",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [
          Text(
            "Done",
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Title",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),
            const SizedBox(
              height: 10,
            ),
          const Padding(
            padding:  EdgeInsets.all(12.0),
            child:  TextField(
                decoration:  InputDecoration(hintText: "Enter the Title",border: OutlineInputBorder()),
              ),
          ),
            const SizedBox(
              height: 15,
            ),  const Text("Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Enter the Description",border: UnderlineInputBorder()),
              ),

            ),
            const SizedBox(height: 10,),
            TextField(
        controller: dateController, 
          decoration: const InputDecoration( 
            
                    icon: Icon(Icons.calendar_today), 
                   labelText: "Enter Date", labelStyle: TextStyle(color: Colors.black) 
            ),
           readOnly: true, 
           onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                   
                    lastDate: DateTime(2100));
 
                if (pickedDate != null) {
                  print(
                      pickedDate); 
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  setState(() {
                
                    dateController.text =
                        formattedDate; 
                  });
                } else {}
            }
  )
          ],
        ),
      ),
    );
  }
}
