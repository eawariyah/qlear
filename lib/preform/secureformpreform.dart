import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as picker;

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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            iconTheme: const IconThemeData(color: Colors.white),
            title: Row(
              children: [
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: ElevatedButton(
                //       onPressed: () {
                //         Scaffold.of(context).openDrawer();
                //       },
                //       child: Icon(
                //         Icons.menu,
                //         color: Colors.white,
                //       )),
                // ),
                const Spacer(),
                // ElevatedButton(
                //     style: ButtonStyle(
                //       backgroundColor: WidgetStateProperty.all(
                //           Colors.black), // Set padding to zero
                //     ),
                //     onPressed: () {
                //       Navigator.pushNamed(context, "/sixth");
                //     },
                //     child: const Row(
                //       children: [
                //         Text(
                //           'Done',
                //           style: TextStyle(color: Colors.white, fontSize: 16),
                //         ),
                //         Icon(
                //           Icons.arrow_forward_ios,
                //           color: Colors.white,
                //         ),
                //       ],
                //     )),
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

                  Text(
                    'Enter the name of the form',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Center(
                            child: Text(
                              'WWDC Pass 2024',
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

                  ElevatedButton(
                      onPressed: () {
                        picker.DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 3, 5),
                            maxTime: DateTime(2019, 6, 7),
                            theme: picker.DatePickerTheme(
                                headerColor: Color(0xFF1E1E1E),
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                itemStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                                cancelStyle: TextStyle(
                                    color: Colors.white, fontSize: 16),
                                doneStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16)), onChanged: (date) {
                          print('change $date in time zone ' +
                              date.timeZoneOffset.inHours.toString());
                        }, onConfirm: (date) {
                          print('confirm $date');
                        },
                            currentTime: DateTime.now(),
                            locale: picker.LocaleType.en);
                      },
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            EdgeInsets.zero), // Set padding to zero
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            WidgetStateProperty.all(Color(0xFF1E1E1E)),
                      ),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 32,
                      )),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: TextButton(
                  //       onPressed: () {
                  //         picker.DatePicker.showDatePicker(context,
                  //             showTitleActions: true,
                  //             minTime: DateTime(2018, 3, 5),
                  //             maxTime: DateTime(2019, 6, 7),
                  //             theme: picker.DatePickerTheme(
                  //                 headerColor: Color(0xFF1E1E1E),
                  //                 backgroundColor:
                  //                     const Color.fromARGB(255, 0, 0, 0),
                  //                 itemStyle: TextStyle(
                  //                     color: Colors.white,
                  //                     fontWeight: FontWeight.bold,
                  //                     fontSize: 18),
                  //                 doneStyle: TextStyle(
                  //                     color: Colors.white,
                  //                     fontSize: 16)), onChanged: (date) {
                  //           print('change $date in time zone ' +
                  //               date.timeZoneOffset.inHours.toString());
                  //         }, onConfirm: (date) {
                  //           print('confirm $date');
                  //         },
                  //             currentTime: DateTime.now(),
                  //             locale: picker.LocaleType.en);
                  //       },
                  //       child: Text(
                  //         'Pick Duration',
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.bold),
                  //       )),
                  // ),
                  SizedBox(
                    height: 100,
                  ),
                  const Spacer(),
                  // BottomNavigationBar(
                  //   items: const [
                  //     BottomNavigationBarItem(
                  //       icon: Icon(Icons.add),
                  //       label: 'Create form',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       icon: Icon(Icons.qr_code),
                  //       label: 'Scan form',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       icon: Icon(Icons.person),
                  //       label: 'Me',
                  //     ),
                  //   ],
                  //   onTap: (index) {
                  //     if (index == 0) {
                  //       Navigator.pushNamed(context, "/second");
                  //     }
                  //     if (index == 1) {
                  //       Navigator.pushNamed(context, "/third");
                  //     }
                  //     if (index == 2) {
                  //       Navigator.pushNamed(context, "/fourth");
                  //     }
                  //   },
                  //   backgroundColor: Colors.black,
                  //   selectedItemColor: Colors.white,
                  //   unselectedItemColor: Colors.white54,
                  // ),
                  // ElevatedButton(onPressed: (){
                  //                           Navigator.pushNamed(context, "/fifth");

                  // }), child: )
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
