import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
class ImageUplaoddd extends StatefulWidget {

  @override
  _Update_nameState createState() => _Update_nameState();
}

class _Update_nameState extends State<ImageUplaoddd> {
  TextEditingController passtype=new TextEditingController();
  File _image;

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
                Text("Upload a Photo of yourself",
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
                      child: InkWell(
                        onTap: ()async {
                          File image = await  ImagePicker.pickImage(
                              source: ImageSource.gallery, imageQuality: 50
                          );

                          setState(() {
                            _image = image;
                          });
                        },
                        child: Container(
                          height: 200,
                          child: _image==null?Image.asset("assets/upload.png"):
                          Image.file(_image),
                        ),
                      )
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
                      Navigator.pop(context,_image);
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
