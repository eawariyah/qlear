import 'package:flutter/material.dart';
import 'package:qlear/InputWidgets/NormalCheckboxInput.dart';
import 'package:qlear/InputWidgets/NormalRadioInput.dart';
import 'package:qlear/InputWidgets/NormalTextInput.dart';

class QuizSubForm extends StatefulWidget {
  const QuizSubForm({super.key});

  @override
  State<QuizSubForm> createState() => _QuizSubFormState();
}

class _QuizSubFormState extends State<QuizSubForm> {
  List<Widget> formWidgets = [];

  void _addTextInput() {
    setState(() {
      formWidgets.add(
        NormalTextInput(
          buttonText: 'What is your name?',
          dialogTitle: 'Dialog Title',
          numberInput: "${formWidgets.length + 1}.",
          dialogLabelText: 'What is your name?',
          dialogHintText: 'Enter your name',
          onDeletePressed: () {
            _deleteWidget(formWidgets.length);
          },
          onClosePressed: () {
            print('Close button pressed');
          },
        ),
      );
    });
  }

  void _addRadioInput() {
    setState(() {
      formWidgets.add(
        NormalRadioInput(
          numberInput: "${formWidgets.length + 1}. ",
          buttonTitleText:
              "How would you like to receive additional information?",
          radioList: ["Phone", "Email", "Text"],
          dialogRadioList: ["Phone", "Email", "Text"],
          dialogTitle: "Title",
          dialogLabelText: "Title",
          dialogHintText: "dialogHintText",
          onDeletePressed: () {
            _deleteWidget(formWidgets.length);
          },
          onClosePressed: () {
            print('Close button pressed');
          },
        ),
      );
    });
  }

  void _addCheckboxInput() {
    setState(() {
      formWidgets.add(
        NormalCheckboxInput(
          numberInput: "${formWidgets.length + 1}. ",
          buttonTitleText: "Which session would you like to attend?",
          radioList: [
            "Session 1",
            "Session 2",
            "Session 3",
            "Session 4",
            "Session 5"
          ],
          dialogRadioList: ["Phone", "Email", "Text"],
          dialogTitle: "Title",
          dialogLabelText: "Title",
          dialogHintText: "dialogHintText",
          onDeletePressed: () {
            _deleteWidget(formWidgets.length);
          },
          onClosePressed: () {
            print('Close button pressed');
          },
        ),
      );
    });
  }

  void _deleteWidget(int index) {
    setState(() {
      formWidgets.removeAt(index - 1);
      // Update numberInput for remaining widgets
      for (int i = 0; i < formWidgets.length; i++) {
        if (formWidgets[i] is NormalTextInput) {
          formWidgets[i] = NormalTextInput(
            buttonText: 'What is your name?',
            dialogTitle: 'Dialog Title',
            numberInput: "${i + 1}.",
            dialogLabelText: 'What is your name?',
            dialogHintText: 'Enter your name',
            onDeletePressed: () {
              _deleteWidget(i + 1);
            },
            onClosePressed: () {
              print('Close button pressed');
            },
          );
        } else if (formWidgets[i] is NormalRadioInput) {
          formWidgets[i] = NormalRadioInput(
            numberInput: "${i + 1}. ",
            buttonTitleText:
                "How would you like to receive additional information?",
            radioList: ["Phone", "Email", "Text"],
            dialogRadioList: ["Phone", "Email", "Text"],
            dialogTitle: "Title",
            dialogLabelText: "Title",
            dialogHintText: "dialogHintText",
            onDeletePressed: () {
              _deleteWidget(i + 1);
            },
            onClosePressed: () {
              print('Close button pressed');
            },
          );
        } else if (formWidgets[i] is NormalCheckboxInput) {
          formWidgets[i] = NormalCheckboxInput(
            numberInput: "${i + 1}. ",
            buttonTitleText: "Which session would you like to attend?",
            radioList: [
              "Session 1",
              "Session 2",
              "Session 3",
              "Session 4",
              "Session 5"
            ],
            dialogRadioList: ["Phone", "Email", "Text"],
            dialogTitle: "Title",
            dialogLabelText: "Title",
            dialogHintText: "dialogHintText",
            onDeletePressed: () {
              _deleteWidget(i + 1);
            },
            onClosePressed: () {
              print('Close button pressed');
            },
          );
        }
      }
    });
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
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/second");
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
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/sixth");
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
                Text('Edit Form',
                    style: TextStyle(color: Colors.white, fontSize: 32)),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: SingleChildScrollView(
                    child: Column(
                      children: formWidgets,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.black,
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.black,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 15.0),
                                      child: Row(
                                        children: [
                                          Spacer(),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              padding: WidgetStateProperty
                                                  .all<EdgeInsets>(EdgeInsets
                                                      .zero), // Set padding to zero
                                              shape: WidgetStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              backgroundColor:
                                                  WidgetStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 0, 0, 0)),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              _addTextInput();
                                            },
                                            child: Column(
                                              children: [
                                                Icon(Icons.text_fields_outlined,
                                                    size: 64,
                                                    color: Colors.white),
                                                Text("Text",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              padding: WidgetStateProperty
                                                  .all<EdgeInsets>(EdgeInsets
                                                      .zero), // Set padding to zero
                                              shape: WidgetStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              backgroundColor:
                                                  WidgetStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 0, 0, 0)),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              _addRadioInput();
                                            },
                                            child: Column(
                                              children: [
                                                Icon(Icons.circle_outlined,
                                                    size: 64,
                                                    color: Colors.white),
                                                Text("Select",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              padding: WidgetStateProperty
                                                  .all<EdgeInsets>(EdgeInsets
                                                      .zero), // Set padding to zero
                                              shape: WidgetStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              backgroundColor:
                                                  WidgetStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 0, 0, 0)),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              _addCheckboxInput();
                                            },
                                            child: Column(
                                              children: [
                                                Icon(Icons.check_box_outlined,
                                                    size: 64,
                                                    color: Colors.white),
                                                Text("Checkbox",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                          ),
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
                                                    BorderRadius.circular(10))),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                const Color.fromARGB(
                                                    255, 0, 0, 0)),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
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
                      child: Text(
                        'Add',
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
