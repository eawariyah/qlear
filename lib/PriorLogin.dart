import 'package:flutter/material.dart';
import 'package:qlear/LoginPage.dart';
import 'package:qlear/RegisterPage.dart';

class PriorLogin extends StatefulWidget {
  const PriorLogin({super.key});

  @override
  State<PriorLogin> createState() => _PriorLoginState();
}

class _PriorLoginState extends State<PriorLogin> {
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
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Match this with the Container's borderRadius
                  child: Image.asset('assets/LandingPage.png'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'Secure Forms',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Poppins"),
            ),
            Text(
              'Simplified Access',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Easily create, share, and secure forms for effortless event and data management',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: "Poppins",
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ));
                        },
                        // onPressed: null,
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins",
                              color: Colors.white),
                        ),
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF1E1E1E)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                        },
                        // onPressed: null,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins",
                              color: Color(0xFF1E1E1E)),
                        ),
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                          backgroundColor: WidgetStateProperty.all(
                              Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
