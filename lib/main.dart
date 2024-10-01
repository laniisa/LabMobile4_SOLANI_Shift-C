import 'package:flutter/material.dart';
import 'package:tokokita/ui/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Mengatur latar belakang
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal, // Contoh warna tema
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
      ),
      home: LoginPage(), // Hapus 'const' dari sini
    );
  }
}
