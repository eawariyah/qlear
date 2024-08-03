import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart'; // or flutter_spinbox.dart for both

// void main() {
//   runApp(MyApp());
// }

class InvitationFormPreForm extends StatefulWidget {
  const InvitationFormPreForm({super.key});

  @override
  State<InvitationFormPreForm> createState() => _InvitationFormPreFormState();
}

class _InvitationFormPreFormState extends State<InvitationFormPreForm> {
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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            iconTheme: const IconThemeData(color: Colors.white),
            title: Row(
              children: [
                const Spacer(),
              ],
            ),
            backgroundColor: Colors.black,
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
                    'Create a secure form',
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
                        decoration: InputDecoration(
                          label: Center(
                            child: Text(
                              'Enter the name of the form',
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

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SpinBox(
                      min: 1,
                      max: 100,
                      value: 50,
                      onChanged: (value) => print(value),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1E1E1E).withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blueAccent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blueAccent),
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
                  // ToggleButtons(
                  //   isSelected: isSelected,
                  //   onPressed: (int index) {
                  //                       DatePickerDialog(
                  //     firstDate: DateTime.now(), lastDate: DateTime.now()),
                  //     });
                  //   },
                  //   children: const <Widget>[
                  //     Text('Unlimited Interval'),
                  //                           Text('Fixed Interval')

                  //   ],
                  // ),
                  ElevatedButton(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                            child: const Text('Select Date',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)),
                                          ),
                                          ElevatedButton(
                                            onPressed: null,
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
                                            child: const Text('No End Date',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)),
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
                                        padding:
                                            WidgetStateProperty.all<EdgeInsets>(
                                                EdgeInsets.zero),
                                        shape: WidgetStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                const Color(0xFF1E1E1E)),
                                      ),
                                      onPressed: () => Navigator.pop(context),
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
                      padding:
                          WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xFF1E1E1E)),
                    ),
                    child: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      size: 32,
                    ),
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
