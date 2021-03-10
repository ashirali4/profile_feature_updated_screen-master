import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Type extends StatefulWidget {

  @override
  _Update_nameState createState() => _Update_nameState();
}

class _Update_nameState extends State<Type> {
  TextEditingController passtype=new TextEditingController();

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
          color: Colors.white,

          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("What's your email?",
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
                          keyboardType: TextInputType.multiline,
                          maxLines: 07,
                          controller: passtype,
                          decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              ),
                              hintText: 'Write here',
                              labelText: 'Description',

                              prefixText: ' ',

                              suffixStyle: const TextStyle(color: Colors.green)),
                        ),
                      ),
                    ),flex: 1,),

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
                      Navigator.pop(context,passtype.text);
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
