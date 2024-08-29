import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _dOBController = TextEditingController();

  Future<void> _submitForm() async {
    final url =
        'https://us-central1-lab5-383223.cloudfunctions.net/coolorsplusplus/users_data';

    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        'dOB': _dOBController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      }),
    );
    if (response.statusCode == 200) {
      // Registration successful, display success message and navigate to login page
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration successful.'),
        ),
      );
      Navigator.of(context).pushReplacementNamed('/login');
    } else {
      // Registration failed, display error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration failed. Please try again.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Create Account'),
        // ),
        // backgroundColor: Color(0xFF000000),
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Text(
          "Sign Up",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Poppins"),
        ),
        Text(
          "Create your account",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Poppins"),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _firstNameController,
                    decoration:
                        InputDecoration(labelText: 'My student id number is:'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'My student id number is:';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(labelText: 'My name is:'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'My name is:';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration:
                        InputDecoration(labelText: 'My Ashesi email is:'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'My Ashesi email is:';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _dOBController,
                    decoration: InputDecoration(labelText: 'I was born on:'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'I was born on:';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: 'Please enter your new password'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your new password.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitForm();

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        }
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
