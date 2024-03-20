import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapak_telu/screens/home_page.dart';
import 'package:lapak_telu/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false)
        });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_lapak.png'),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'Lapak Tel-U',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(
                      0xFF3570D6), // Menggunakan kode warna heksadesimal dengan format yang sesuai
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
