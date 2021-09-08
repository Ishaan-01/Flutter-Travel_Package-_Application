import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';


class WelcomeText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(38),
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text(
         "Vacation Trips",
         style: GoogleFonts.lato(
             fontSize: 36,
             fontWeight: FontWeight.w700,
           color: Colors.black54
         ),
       ),
       SizedBox(height: 25),

      Text(
        'Enjoy your vacations with warmth and amazing sightseeing on the  . Enjoy the best experience with us!',
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w500,
            color: Colors.black54,
        )
      ),

       SizedBox(height: 40),

       GestureDetector(
         onTap: (){
           Navigator.push(context, MaterialPageRoute(
               builder: (context) =>  HomeScreen()
           ));
         },
         child: Container(
           alignment: Alignment.center,
           width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.symmetric(vertical: 20),
           decoration: BoxDecoration(
             color: Color(0xff544c98),
             borderRadius: BorderRadius.circular(30),
           ),
           child: Text("Let's Go!", style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.w500,
             fontSize: 17,
           ),),

         ),
       ),
        ],
      ),
    );
  }
}
