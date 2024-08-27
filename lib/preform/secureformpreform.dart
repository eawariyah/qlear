import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';
import 'package:qlear/InputWidgets/FloatingButtons.dart'; // or flutter_spinbox.dart for both

// void main() {
//   runApp(MyApp());
// }

class SecureFormPreForm extends StatefulWidget {
  const SecureFormPreForm({super.key});

  @override
  State<SecureFormPreForm> createState() => _SecureFormPreFormState();
}

class _SecureFormPreFormState extends State<SecureFormPreForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            leadingWidth: 100,
            leading: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor:
                    WidgetStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.arrow_back, color: Colors.white),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PreformNext(),
                  ));
                },
                child: const Row(
                  children: [
                    Text('Done',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    Icon(Icons.arrow_forward_ios, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Create a Secure Form',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      'What type of event do you want to host?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  FloatingButtonInput(
                      FloatingButtonTextOne: "Music Festivals",
                      FloatingButtonTextTwo: "Charity Walks or Runs"),
                  FloatingButtonInput(
                      FloatingButtonTextOne: "Weddings",
                      FloatingButtonTextTwo: "Corporate Events"),
                  FloatingButtonInput(
                      FloatingButtonTextOne: "Sports Events",
                      FloatingButtonTextTwo: "Parades"),
                  FloatingButtonInput(
                      FloatingButtonTextOne: "Award Shows",
                      FloatingButtonTextTwo: "Community Fairs"),
                  FloatingButtonInput(
                      FloatingButtonTextOne: "Concerts",
                      FloatingButtonTextTwo: "Conferences"),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 10),
                    child: Row(
                      children: [
                        Container(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(10)), // Set padding to zero
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                                backgroundColor:
                                    WidgetStateProperty.all(Color(0xFF1E1E1E)),
                              ),
                              onPressed: null,
                              child: Text(
                                "Other",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              )),
                        )),
                        Spacer()
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.black,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PreformNext(),
                          ));
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero), // Set padding to zero
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF1E1E1E)),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class PreformNext extends StatelessWidget {
  const PreformNext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          // appBar: AppBar(
          //   leading: IconButton(
          //     icon: const Icon(Icons.arrow_back),
          // onPressed: () {
          //   Navigator.of(context).pop();
          // },
          //   ),
          //   iconTheme: const IconThemeData(color: Colors.white),
          //   title: Row(
          //     children: [
          //       const Spacer(),
          //     ],
          //   ),
          //   backgroundColor: Colors.black,
          // ),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            leadingWidth: 100,
            leading: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor:
                    WidgetStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.arrow_back, color: Colors.white),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/fifth");
                },
                child: const Row(
                  children: [
                    Text('Done',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    Icon(Icons.arrow_forward_ios, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Create a Secure Form',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          label: Center(
                            child: Text(
                              'Enter the name of the event',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                          ),
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Enter the number of participants',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.18,
                    color: Colors.black,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF1E1E1E),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                child: SpinBox(
                                                  min: 1,
                                                  max: 100,
                                                  value: 0,
                                                  cursorColor: Colors.white,
                                                  onChanged: (value) =>
                                                      print(value),
                                                  decoration: InputDecoration(
                                                    filled: true,
                                                    fillColor: Color(0xFF1E1E1E)
                                                        .withOpacity(0.1),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .blueAccent),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .blueAccent),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .blueAccent),
                                                    ),
                                                  ),
                                                  textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              ElevatedButton(
                                                onPressed: null,
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty
                                                      .all<EdgeInsets>(
                                                          EdgeInsets.zero),
                                                  shape: WidgetStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10))),
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          const Color(
                                                              0xFF1E1E1E)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    Text(
                                                        'Unlimited Participants',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color: Colors.white),
                                                    Spacer()
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        ElevatedButton(
                                          child: const Text('Close',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                          style: ButtonStyle(
                                            padding: WidgetStateProperty.all<
                                                EdgeInsets>(EdgeInsets.zero),
                                            shape: WidgetStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                    const Color(0xFF1E1E1E)),
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero), // Set padding to zero
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF1E1E1E)),
                        ),
                        child: Text(
                          'Choose',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'How long will the form be valid?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.18,
                    color: Colors.black,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF1E1E1E),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  showDateRangePicker(
                                                      context: context,
                                                      firstDate: DateTime.now(),
                                                      lastDate: DateTime(2101));
                                                },
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty
                                                      .all<EdgeInsets>(
                                                          EdgeInsets.zero),
                                                  shape: WidgetStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10))),
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          const Color(
                                                              0xFF1E1E1E)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    Text('Select Date',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color: Colors.white),
                                                    Spacer()
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: null,
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty
                                                      .all<EdgeInsets>(
                                                          EdgeInsets.zero),
                                                  shape: WidgetStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10))),
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          const Color(
                                                              0xFF1E1E1E)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    Text('No End Date',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color: Colors.white),
                                                    Spacer()
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        ElevatedButton(
                                          child: const Text('Close',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                          style: ButtonStyle(
                                            padding: WidgetStateProperty.all<
                                                EdgeInsets>(EdgeInsets.zero),
                                            shape: WidgetStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                    const Color(0xFF1E1E1E)),
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero), // Set padding to zero
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF1E1E1E)),
                        ),
                        child: Text(
                          'Select',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  const Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.black,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/fifth");
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero), // Set padding to zero
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF1E1E1E)),
                        ),
                        child: Text(
                          'Proceed',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
