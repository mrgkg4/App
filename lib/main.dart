import 'package:flutter/material.dart';
import 'Account.dart';
import 'Log in.dart';
import 'Sign In.dart';
import 'Home.dart';
import 'Reclamation.dart';
import 'Produit Defectueuex.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AccountPage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      initialRoute: '/account',
      routes: {
        '/account': (context) => const AccountPage(),
        '/login': (context) => const LogInPage(),
        '/sign_in': (context) => SignInPage(),
        '/home': (context) => const HomePage(),
        '/reclamation': (context) => const ReclamationPage(),
        '/produit_defectueuex': (context) => const ProduitDefectueuexPage(),
      },
    );
  }
}
