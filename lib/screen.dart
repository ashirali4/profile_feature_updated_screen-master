import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_feature_updated_screen/description.dart';
import 'package:profile_feature_updated_screen/eamil.dart';
import 'package:profile_feature_updated_screen/main.dart';
import 'package:profile_feature_updated_screen/phone.dart';

import 'image.dart';
import 'name.dart';

class Profile_screen extends StatefulWidget {
  @override
  _Profile_screenState createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  String name = "Micah Smith";
  String email = "micahsmith@gmail.com";
  String phone = "(208) 206 5038";
  File image;
  String description =
      "Hi my name is Mica Smit. I am from Mesa but go to school in Salt Lake City. I amke this drive all time and have plenty.";
  Widget fields_ui(String value, String type) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    value,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(child: InkWell(
                onTap: () async{
                  if(type=="Name"){
                    String nn=await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Update_name(),
                      ),
                    );
                    if(nn.isNotEmpty){
                      setState(() {
                        name=nn;
                      });
                    }
                  }

                  if(type=="Phone"){
                    String pp=await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Phone(),
                      ),
                    );
                    if(pp.isNotEmpty){
                      setState(() {
                        phone=pp;
                      });
                    }
                  }

                  if(type=="Email"){
                    String ee=await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Email(),
                      ),
                    );
                    if(ee.isNotEmpty){
                      setState(() {
                        email=ee;
                      });
                    }
                  }

                  if(type=="Tell us about your self"){
                    String tt=await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Type(),
                      ),
                    );
                    if(tt.isNotEmpty){
                      setState(() {
                        description=tt;
                      });
                    }
                  }
                },
                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black54))),
          ],
        ),
        SizedBox(height: 05),
        Divider(
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0XFFf9f9f9),

          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Edit Profile",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                width: 140,
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          border:
                              Border.all(color: Colors.blueAccent, width: 5),
                          image: DecorationImage(
                              image: image==null?AssetImage("assets/ss.jpg"):FileImage(image))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 08, right: 05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         InkWell(
                           child:Container(
                             height: 35,
                             width: 35,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius:
                               BorderRadius.all(Radius.circular(100)),
                             ),
                             child: Icon(Icons.edit,
                                 size: 25, color: Colors.blueAccent),
                           ),
                           onTap: ()async{
                             File newimage=await Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => ImageUplaoddd(),
                               ),
                             );
                             if(newimage!=null){
                               setState(() {
                                image=newimage;
                               });
                             }
                           },
                         ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  children: [
                    fields_ui(name, "Name"),
                    fields_ui(phone, "Phone"),
                    fields_ui(email, "Email"),
                    fields_ui(description, "Tell us about your self"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
