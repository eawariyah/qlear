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
          // backgroundColor: Colors.black,
          appBar: AppBar(
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
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Colors.black), // Set padding to zero
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/sixth");
                    },
                    child: const Row(
                      children: [
                        Text(
                          'Done',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                              child: ElevatedButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero), // Set padding to zero
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                            ),
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
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      'What is your name?',
                                                  labelStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                  hintStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            ElevatedButton(
                                              child: const Text('Close',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                              style: ButtonStyle(
                                                padding: WidgetStateProperty
                                                    .all<EdgeInsets>(EdgeInsets
                                                        .zero), // Set padding to zero
                                                shape: WidgetStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10))),
                                                backgroundColor:
                                                    WidgetStateProperty.all(
                                                        const Color(
                                                            0xFF1E1E1E)),
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.72,
                                          child: const Text(
                                            '1. What is your name?',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),

                                          // child: const TextField(
                                          //   decoration: InputDecoration(
                                          //     border: OutlineInputBorder(),
                                          //     labelText: 'What is your name?',
                                          //   ),
                                          // ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          width: 60,
                                          height: 60,
                                          child: ElevatedButton(
                                            onPressed: null,
                                            child: const Icon(Icons.delete,
                                                color: Colors.white),
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
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: ElevatedButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero), // Set padding to zero
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height: 300,
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
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  TextField(
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      labelText: 'Title',
                                                      labelStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                      hintStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 8.00),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .cancel_outlined,
                                                            color:
                                                                Colors.white),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        SizedBox(
                                                          width: 255,
                                                          height: 45,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              labelText:
                                                                  'Option 1',
                                                              labelStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 8.00),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .cancel_outlined,
                                                            color:
                                                                Colors.white),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        SizedBox(
                                                          width: 255,
                                                          height: 45,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              labelText:
                                                                  'Option 2',
                                                              labelStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            SizedBox(
                                              width: 300,
                                              child: Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 60,
                                                  ),
                                                  ElevatedButton(
                                                    child: const Text('Close',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    style: ButtonStyle(
                                                      padding: WidgetStateProperty
                                                          .all<EdgeInsets>(
                                                              EdgeInsets
                                                                  .zero), // Set padding to zero
                                                      shape: WidgetStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                      backgroundColor:
                                                          WidgetStateProperty
                                                              .all(const Color(
                                                                  0xFF1E1E1E)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                  const Spacer(),
                                                  ElevatedButton(
                                                    child: const Text('Add',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    style: ButtonStyle(
                                                      padding: WidgetStateProperty
                                                          .all<EdgeInsets>(
                                                              EdgeInsets
                                                                  .zero), // Set padding to zero
                                                      shape: WidgetStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                      backgroundColor:
                                                          WidgetStateProperty
                                                              .all(const Color(
                                                                  0xFF1E1E1E)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                  const SizedBox(
                                                    width: 60,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.72,
                                              child: const Text(
                                                '2. How would you like to recieve additional information?',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),

                                              // child: const TextField(
                                              //   decoration: InputDecoration(
                                              //     border: OutlineInputBorder(),
                                              //     labelText: 'What is your name?',
                                              //   ),
                                              // ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              width: 60,
                                              height: 60,
                                              child: ElevatedButton(
                                                onPressed: null,
                                                child: const Icon(Icons.delete,
                                                    color: Colors.white),
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty
                                                      .all<EdgeInsets>(EdgeInsets
                                                          .zero), // Set padding to zero
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
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.circle_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Phone call',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.circle_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Email',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.circle_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Text',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: ElevatedButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero), // Set padding to zero
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height: 300,
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
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  TextField(
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      labelText: 'Title',
                                                      labelStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                      hintStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 8.00),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .cancel_outlined,
                                                            color:
                                                                Colors.white),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        SizedBox(
                                                          width: 255,
                                                          height: 45,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              labelText:
                                                                  'Option 1',
                                                              labelStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.0, left: 8.00),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .cancel_outlined,
                                                            color:
                                                                Colors.white),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        SizedBox(
                                                          width: 255,
                                                          height: 45,
                                                          child: TextField(
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              labelText:
                                                                  'Option 2',
                                                              labelStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            SizedBox(
                                              width: 300,
                                              child: Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 60,
                                                  ),
                                                  ElevatedButton(
                                                    child: const Text('Close',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    style: ButtonStyle(
                                                      padding: WidgetStateProperty
                                                          .all<EdgeInsets>(
                                                              EdgeInsets
                                                                  .zero), // Set padding to zero
                                                      shape: WidgetStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                      backgroundColor:
                                                          WidgetStateProperty
                                                              .all(const Color(
                                                                  0xFF1E1E1E)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                  const Spacer(),
                                                  ElevatedButton(
                                                    child: const Text('Add',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18)),
                                                    style: ButtonStyle(
                                                      padding: WidgetStateProperty
                                                          .all<EdgeInsets>(
                                                              EdgeInsets
                                                                  .zero), // Set padding to zero
                                                      shape: WidgetStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                      backgroundColor:
                                                          WidgetStateProperty
                                                              .all(const Color(
                                                                  0xFF1E1E1E)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                  const SizedBox(
                                                    width: 60,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 240,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1E1E1E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.72,
                                              child: const Text(
                                                '3. Which session would you like to attend?',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),

                                              // child: const TextField(
                                              //   decoration: InputDecoration(
                                              //     border: OutlineInputBorder(),
                                              //     labelText: 'What is your name?',
                                              //   ),
                                              // ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              width: 60,
                                              height: 60,
                                              child: ElevatedButton(
                                                onPressed: null,
                                                child: const Icon(Icons.delete,
                                                    color: Colors.white),
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty
                                                      .all<EdgeInsets>(EdgeInsets
                                                          .zero), // Set padding to zero
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
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_box_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Session 1',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_box_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Session 2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_box_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Session 3',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_box_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Session 4',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, left: 50.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_box_outlined,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('Session 5',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200,
                                        color: Colors.black,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    ElevatedButton(
                                                        onPressed: null,
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                                Icons
                                                                    .text_fields_outlined,
                                                                size: 64,
                                                                color: Colors
                                                                    .white),
                                                            Text("Text",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                )),
                                                          ],
                                                        )),
                                                    Spacer(),
                                                    ElevatedButton(
                                                        onPressed: null,
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                size: 64,
                                                                color: Colors
                                                                    .white),
                                                            Text("Select",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                )),
                                                          ],
                                                        )),
                                                    Spacer(),
                                                    ElevatedButton(
                                                        onPressed: null,
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                                Icons
                                                                    .check_box_outlined,
                                                                size: 64,
                                                                color: Colors
                                                                    .white),
                                                            Text("Checkbox",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                )),
                                                          ],
                                                        )),
                                                    Spacer(),
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                child: const Text('Close',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18)),
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty
                                                      .all<EdgeInsets>(EdgeInsets
                                                          .zero), // Set padding to zero
                                                  shape: WidgetStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10))),
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          const Color.fromARGB(
                                                              255, 0, 0, 0)),
                                                ),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: const Icon(
                                Icons.add_box_outlined,
                                color: Colors.black,
                                size: 64,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
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
            ),
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
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.assignment,
                      color: Colors.green), // Set icon color here
                  title: const Text('Active Forms'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
