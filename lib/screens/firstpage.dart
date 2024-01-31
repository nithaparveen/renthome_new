import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_user.dart';

class User_Provider extends StatelessWidget {
  const User_Provider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001118),
      body: SizedBox(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/image/img.png')),
            Positioned(
              top: 163,
              left: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rent a House ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        //     shadows:[
                        //   Shadow(
                        //     offset: Offset(10.0, 10.0),
                        //     blurRadius: 3.0,
                        //     color: Color.fromARGB(255, 0, 0, 0),
                        //   ),
                        //   Shadow(
                        //     offset: Offset(10.0, 10.0),
                        //     blurRadius: 8.0,
                        //     color: Color.fromARGB(125, 0, 0, 255),
                        //   ),
                        // ] ,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  Text(
                    'for you.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100))),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 237,
                    height: 41,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Color(0xff0D1F23),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginUser()));
                      },
                      child: Text(
                        'LOGIN AS USER',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 237,
                    height: 41,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Color(0xff0D1F23),
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginProvider()));
                      },
                      child: Text(
                        'LOGIN AS PROVIDER',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
