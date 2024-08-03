import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          title: Row(
            children: [
              // Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     onPressed: null,
              //     child: Icon(
              //       Icons.menu,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/fourth");
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.zero), // Set padding to zero
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      WidgetStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                ),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/seventh");
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                  ),
                  child: Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF1E1E1E), width: 2),
                      image: const DecorationImage(
                        image: AssetImage('assets/SecureForm.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Text(
                            'Secure Form',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/seventh");
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                          ),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFF1E1E1E), width: 2),
                              image: const DecorationImage(
                                image: AssetImage('assets/Black.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Text(
                                    'Survey',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/seventh");
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                          ),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFF1E1E1E), width: 2),
                              image: const DecorationImage(
                                image: AssetImage('assets/Quiz.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Text(
                                    'Quiz',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/seventh");
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                          ),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFF1E1E1E), width: 2),
                              image: const DecorationImage(
                                image: AssetImage('assets/Invitation.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Text(
                                    'Invitation',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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

class SurveyForm extends StatelessWidget {
  const SurveyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const ElevatedButton(
                  onPressed: null,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              const Text('data'),
              const Spacer(),
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
        ));
  }
}

class QuizForm extends StatelessWidget {
  const QuizForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const ElevatedButton(
                  onPressed: null,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              const Text('data'),
              const Spacer(),
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
        ));
  }
}

class InvitationForm extends StatelessWidget {
  const InvitationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const ElevatedButton(
                  onPressed: null,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              const Text('data'),
              const Spacer(),
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
        ));
  }
}

class SecureForm extends StatelessWidget {
  const SecureForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const ElevatedButton(
                  onPressed: null,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Spacer(),
              Text(
                'Create Secure Form',
                style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Heading',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 24),
                      prefixIcon: Icon(
                        Icons.send_time_extension_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/fifth");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
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
        ));
  }
}
