import 'package:flutter/material.dart';
import 'package:qlear/InputWidgets/NormalCheckboxInput.dart';
import 'package:qlear/InputWidgets/NormalRadioInput.dart';
import 'package:qlear/InputWidgets/NormalTextInput.dart';

class SecureSubForm extends StatefulWidget {
  const SecureSubForm({super.key});

  @override
  State<SecureSubForm> createState() => _SecureSubFormState();
}

class _SecureSubFormState extends State<SecureSubForm> {
  List<Widget> formWidgets = [];
  List<String> radioListValues = [
    "Phone",
    "Email",
    "Text",
    "Other",
    "Other",
    "None",
    "Other"
  ];
  List<String> dialogRadioListValues = [
    "New Item",
    // "Text",
    // "Other",
    // "None",
    // "Other"
  ];

  void _addTextInput() {
    setState(() {
      final textController = TextEditingController();
      formWidgets.add(
        NormalTextInput(
          numberInput: "${formWidgets.length + 1}.",
          textController: textController,
          dialogTitle: '1',
          dialogLabelText: 'Enter Text Input',
          // dialogHintText: 'Enter your name',
          dialogHintText: 'Edit Input',

          onDeletePressed: () {
            _deleteWidget(formWidgets.length);
            Navigator.pop(context);
          },
          onClosePressed: () {
            setState(() {
              // Update the button text with the entered text
            });
          },
        ),
      );
    });
  }

  void _addRadioInput() {
    setState(() {
      final radioController = TextEditingController();
      formWidgets.add(
        NormalRadioInput(
          numberInput: "${formWidgets.length + 1}. ",
          textController: radioController,
          radioList: radioListValues,
          dialogRadioList: dialogRadioListValues,
          dialogTitle: "Change select title",
          dialogLabelText: "Change select title",
          dialogHintText: "Edit Input",
          onDeletePressed: () {
            _deleteWidget(formWidgets.length);
            Navigator.pop(context);
          },
          onClosePressed: () {
            print('Close button pressed');
          },
          dialogAddButtonPressed: () {
            print("Add sub radio item");
          },
          dialogDeleteButtonPressed: () {
            print("Delete sub radio item");
          },
        ),
      );
    });
  }

  void _addCheckboxInput() {
    setState(() {
      final checkboxController = TextEditingController();
      formWidgets.add(
        NormalCheckboxInput(
          numberInput: "${formWidgets.length + 1}. ",
          textController: checkboxController,
          checkboxList: [
            "Session 1",
            "Session 2",
            "Session 3",
            "Session 4",
            "Session 5"
          ],
          dialogCheckboxList: [""],
          dialogTitle: "Change Textbox Title",
          dialogLabelText: "Change Textbox Title",
          dialogHintText: "Change Textbox Title",
          onDeletePressed: () {
            _deleteWidget(formWidgets.length);
            Navigator.pop(context);
          },
          // dialogAddButton: () {
          //   print("Add Button Pressed");
          // },
          onClosePressed: () {
            print('Close button pressed');
          },
        ),
      );
    });
  }

  void _deleteWidget(int index) {
    setState(() {
      if (index > 0) {
        formWidgets.removeAt(index - 1);
      } else {
        print("Index is zero or less, no widget removed.");
        return;
      }

      // Update numberInput for remaining widgets
      for (int i = 0; i < formWidgets.length; i++) {
        if (formWidgets[i] is NormalTextInput) {
          formWidgets[i] = NormalTextInput(
            textController: (formWidgets[i] as NormalTextInput).textController,
            dialogTitle: 'Dialog Title',
            numberInput: "${i + 1}.",
            dialogLabelText: 'Enter text input',
            // dialogHintText: 'Enter your name',
            dialogHintText: 'Enter text input',

            onDeletePressed: () {
              _deleteWidget(i + 1);
              Navigator.pop(context);
            },
            onClosePressed: () {
              print('Close button pressed');
            },
          );
        } else if (formWidgets[i] is NormalRadioInput) {
          formWidgets[i] = NormalRadioInput(
            numberInput: "${i + 1}. ",
            textController: (formWidgets[i] as NormalRadioInput).textController,
            radioList: ["Phone"],
            dialogRadioList: [""],
            dialogTitle: "Title",
            dialogLabelText: "Title",
            dialogHintText: "",
            onDeletePressed: () {
              _deleteWidget(i + 1);
              Navigator.pop(context);
            },
            onClosePressed: () {
              print('Close button pressed');
            },
          );
        } else if (formWidgets[i] is NormalCheckboxInput) {
          formWidgets[i] = NormalCheckboxInput(
            numberInput: "${i + 1}. ",
            textController:
                (formWidgets[i] as NormalCheckboxInput).textController,
            checkboxList: [
              "Session 1",
              "Session 2",
              "Session 3",
              "Session 4",
              "Session 5"
            ],
            dialogCheckboxList: ["Phone", "Email", "Text"],
            dialogTitle: "Title",
            dialogLabelText: "Text One",
            dialogHintText: "Text Two",
            onDeletePressed: () {
              _deleteWidget(i + 1);
              Navigator.pop(context);
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
