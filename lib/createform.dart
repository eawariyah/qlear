import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qlear/InputWidgets/FormImageCardLeft.dart';
import 'package:qlear/InputWidgets/FormImageCardRight.dart';

class CreateForm extends StatefulWidget {
  const CreateForm({super.key});

  @override
  State<CreateForm> createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            automaticallyImplyLeading: true,
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.zero), // Set padding to zero
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      WidgetStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/fourth");
                },
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ]),
        body: Column(
          children: [
            FormImageCardRight(
              ImagePath: 'assets/SecureForm.png',
              CardTitle: 'Secure Form',
              WhatToDo: () {
                Navigator.pushNamed(context, "/seventh");
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FormImageCardLeft(
                      ImagePath: 'assets/Black.png',
                      CardTitle: 'Survey',
                      WhatToDo: () {
                        Navigator.pushNamed(context, "/seventh");
                      },
                    ),
                    FormImageCardRight(
                      ImagePath: 'assets/Quiz.png',
                      CardTitle: 'Quiz',
                      WhatToDo: () {
                        Navigator.pushNamed(context, "/seventh");
                      },
                    ),
                    FormImageCardLeft(
                      ImagePath: 'assets/Invitation.png',
                      CardTitle: 'Invitation',
                      WhatToDo: () {
                        Navigator.pushNamed(context, "/seventh");
                      },
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: 'Create form',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code),
                  label: 'Scan form',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Me',
                ),
              ],
              onTap: (index) {
                if (index == 0) {
                  Navigator.pushNamed(context, "/second");
                }
                if (index == 1) {
                  Navigator.pushNamed(context, "/third");
                }
                if (index == 2) {
                  Navigator.pushNamed(context, "/fourth");
                }
              },
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.description,
                    color: Colors.blue), // Set icon color here
                title: const Text('My Forms'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.assignment,
                    color: Colors.green), // Set icon color here
                title: const Text('Active Forms'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
