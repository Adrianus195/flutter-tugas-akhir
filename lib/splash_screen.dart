// ignore_for_file: use_super_parameters, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tugas_akhir/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeInOut;
            const duration =
                Duration(seconds: 2); // Ubah durasi animasi di sini

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
          transitionDuration:
              Duration(seconds: 2), // Sesuaikan durasi transisi di sini
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 234, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/logo-apps.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Karantina Ikan Betutu Jeruju',
              style: TextStyle(
                fontFamily:
                    'default', // Ganti sesuai dengan nama family font yang Anda masukkan di pubspec.yaml
                fontSize: 22.0, // Ukuran teks
                fontWeight: FontWeight.bold, // Ketebalan teks
                fontStyle: FontStyle.italic, // Gaya teks (misalnya: miring)
                color: Colors.black, // Warna teks
                // Dan properti lainnya sesuai kebutuhan
              ),
            ),
          ],
        ),
      ),
    );
  }
}
