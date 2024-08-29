import 'package:qlear/PriorLogin.dart';
import 'package:qlear/createform.dart';
import 'package:qlear/forms/secureform.dart';
import 'package:qlear/preform/secureformpreform.dart';
import 'package:qlear/sharablelinkpage/secureformsharable.dart';
import 'package:qlear/scancode.dart';
import 'package:qlear/profilepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routing the pages',
      initialRoute: '/',
      routes: {
        '/': (context) => const PriorLogin(),
        '/second': (context) => const CreateForm(),
        '/third': (context) => const ScanCode(),
        '/fourth': (context) => const ProfilePage(),
        '/fifth': (context) => const SecureSubForm(),
        '/sixth': (context) => const SecureFormSharable(),
        '/seventh': (context) => const SecureFormPreForm(),
      },
    );
  }
}
