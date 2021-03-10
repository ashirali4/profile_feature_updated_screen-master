import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Update_name extends StatefulWidget {

  @override
  _Update_nameState createState() => _Update_nameState();
}

class _Update_nameState extends State<Update_name> {
  TextEditingController firstname=new TextEditingController();
  TextEditingController lastname=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_sharp,color: Colors.black54,)),
      ),
      body: SingleChildScrollView(
        child: Container(
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("What's your name?",
                 style: GoogleFonts.poppins(
                   fontSize: 25,
                   color: Colors.black,
                   fontWeight: FontWeight.w600
                 ),),
                     SizedBox(height: 30,),
                     Row(
                       children: [
                         Expanded(child: Padding(
                           padding: const EdgeInsets.only(right: 10),
                           child: Theme(
                             data: new ThemeData(
                               primaryColor: Colors.black,
                               primaryColorDark: Colors.black,
                             ),
                             child: new TextField(
                               controller: firstname,
                               decoration: new InputDecoration(
                                   border: new OutlineInputBorder(
                                       borderSide: new BorderSide(color: Colors.black),
                                       borderRadius: BorderRadius.all(Radius.circular(0)),
                                   ),
                                   hintText: 'John',
                                   labelText: 'First Name',

                                   prefixText: ' ',

                                   suffixStyle: const TextStyle(color: Colors.green)),
                             ),
                           ),
                         ),flex: 1,),
                         Expanded(child: Padding(
                           padding: const EdgeInsets.only(right: 10),
                           child: Theme(
                             data: new ThemeData(
                               primaryColor: Colors.black,
                               primaryColorDark: Colors.black,
                             ),
                             child: new TextField(
                               controller: lastname,
                               decoration: new InputDecoration(
                                   border: new OutlineInputBorder(
                                       borderSide: new BorderSide(color: Colors.black),
                                     borderRadius: BorderRadius.all(Radius.circular(0)),
                                   ),

                                   hintText: 'Smith',
                                   labelText: 'Last Name',

                                   prefixText: ' ',

                                   suffixStyle: const TextStyle(color: Colors.green)),
                             ),
                           ),
                         ),flex: 1,)
                       ],
                     ),

                 SizedBox(height: 100,),
                 Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width,
                   child: RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(0.0),
                         side: BorderSide(color: Colors.black)),
                     onPressed: () {
                       Navigator.pop(context,firstname.text+" "+lastname.text);
                     },
                     color: Colors.black,
                     textColor: Colors.white,
                     child: Text("Update".toUpperCase(),
                         style: TextStyle(fontSize: 14)),
                   ),
                 ),
               ],
             ),
           ),
        ),
      ),
    );
  }
}
