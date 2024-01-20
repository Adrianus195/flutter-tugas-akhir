// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, unused_local_variable, unused_field, prefer_final_fields, unused_import, avoid_print, use_build_context_synchronously, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tugas_akhir/menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  String _email = "";
  String _password = "";

  void _handleLogin() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      print("User telah Login : ${userCredential.user!.email}");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    } catch (e) {
      print("Gagal Login : $e");
      // Tampilkan alert pop-up di sini
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login Gagal"),
            content:
                Text("Email atau password tidak valid. Silakan coba lagi."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200, // Lebar yang diinginkan
                    height: 200, // Tinggi yang diinginkan
                    child: Image.asset(
                      'assets/logo-apps.png', // Sesuaikan dengan nama file gambar Anda
                      fit: BoxFit
                          .cover, // Sesuaikan dengan BoxFit yang diinginkan
                    ),
                  ),
                  Text(
                    'Karantina Ikan Betutu Jeruju',
                    style: TextStyle(
                      fontFamily:
                          'default', // Ganti sesuai dengan nama family font yang Anda masukkan di pubspec.yaml
                      fontSize: 22.0, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                      fontStyle:
                          FontStyle.italic, // Gaya teks (misalnya: miring)
                      color: Colors.black, // Warna teks
                      // Dan properti lainnya sesuai kebutuhan
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      labelText: "Email",
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email tidak boleh kosong";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      labelText: "Password",
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password tidak boleh kosong";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _handleLogin();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 0, 100, 182), // Warna latar belakang tombol
                      minimumSize:
                          Size(double.infinity, 50), // Lebar dan tinggi tombol
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white, // Warna teks tombol
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
