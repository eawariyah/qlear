import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class SecureSubForm extends StatefulWidget {
  const SecureSubForm({super.key});

  @override
  State<SecureSubForm> createState() => _SecureSubFormState();
}

class _SecureSubFormState extends State<SecureSubForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ),
                  Spacer(),
                  const ElevatedButton(
                      onPressed: null,
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                ],
              ),
              backgroundColor: Colors.black,
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const InvitationForm(),
                          //   ));
                          // },
                          onTap: null,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/TextInput.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const InvitationForm(),
                          //   ));
                          // },
                          onTap: null,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage('assets/MultiCheckbox.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const InvitationForm(),
                          //   ));
                          // },
                          onTap: null,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/radio.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const InvitationForm(),
                          //   ));
                          // },
                          onTap: null,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/grid.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    //The Text input field
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(),
                    //       hintText: 'Enter item',
                    //     ),
                    //   ),
                    // ),

                    // Center(
                    //     child: Row(
                    //   children: [
                    //     Spacer(),
                    //     ElevatedButton(
                    //       onPressed: null,
                    //       child: Row(
                    //         children: [
                    //           Icon(
                    //             Icons.add,
                    //             color: Colors.black,
                    //           ),
                    //           Text(
                    //             'Add item',
                    //             style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontFamily: 'Poppins',
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ],
                    //       ),
                    //       style: ElevatedButton.styleFrom(
                    //         backgroundColor: Colors.green,
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: 32, vertical: 12),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //         elevation: 5,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     ElevatedButton(
                    //       onPressed: null,
                    //       child: Row(
                    //         children: [
                    //           Text(
                    //             'Proceed',
                    //             style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontFamily: 'Poppins',
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //           Icon(
                    //             Icons.arrow_forward,
                    //             color: Colors.black,
                    //           ),
                    //         ],
                    //       ),
                    //       style: ElevatedButton.styleFrom(
                    //         backgroundColor: Colors.green,
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: 32, vertical: 12),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //         elevation: 5,
                    //       ),
                    //     ),
                    //     Spacer()
                    //   ],
                    // )),

                    //Checkbox header
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(),
                    //       hintText: 'Enter Checkbox Description',
                    //     ),
                    //   ),
                    // ),

                    //Saved Checkbox header text from firebase
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10.0, bottom: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 300,
                            child: Text(
                              'How many hours do you work in a day?',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 8.0, top: 10.0, bottom: 10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.zero), // Set padding to zero
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: Icon(
                                Icons.circle_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                          ),
                          // SizedBox(width: 8.0),
                          // SizedBox(
                          //   width: 50,
                          //   height: 50,
                          //   child: ElevatedButton(
                          //       onPressed: null,
                          //       style: ButtonStyle(
                          //         padding:
                          //             MaterialStateProperty.all<EdgeInsets>(
                          //                 EdgeInsets.zero),
                          //         shape: MaterialStateProperty.all<
                          //                 RoundedRectangleBorder>(
                          //             RoundedRectangleBorder(
                          //                 borderRadius:
                          //                     BorderRadius.circular(10))),
                          //         backgroundColor:
                          //             MaterialStateProperty.all(Colors.red),
                          //       ),
                          //       child: Icon(
                          //         Icons.cancel_outlined,
                          //         color: Colors.black,
                          //       )),
                          // ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Enter Checkbox Item',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Center(
                        child: Row(
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Icon(
                                Icons.transgender_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                'Add item',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 5,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: null,
                          child: Row(
                            children: [
                              Text(
                                'Proceed',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 5,
                          ),
                        ),
                        Spacer()
                      ],
                    )),
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
              ),
            )));
  }
}
