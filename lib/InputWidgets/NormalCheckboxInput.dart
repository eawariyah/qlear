import 'package:flutter/material.dart';
import 'package:qlear/SubInputList/CheckboxItems.dart';
import 'package:qlear/SubInputList/DialogCheckboxItems.dart';

class NormalCheckboxInput extends StatelessWidget {
  final String numberInput;
  final String buttonTitleText;
  final List radioList;
  final List dialogRadioList;
  final String dialogTitle;
  final String dialogLabelText;
  final String dialogHintText;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onClosePressed;

  NormalCheckboxInput({
    required this.numberInput,
    required this.buttonTitleText,
    required this.radioList,
    required this.dialogRadioList,
    required this.dialogTitle,
    required this.dialogLabelText,
    required this.dialogHintText,
    this.onDeletePressed,
    this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF1E1E1E)),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E1E1E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: dialogLabelText,
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                      hintStyle: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ...dialogRadioList
                                      .map((item) => DialogCheckboxItems(
                                          dialogCheckboxItemValue: item,
                                          deleteCheckboxValue: () {
                                            print('Delete button pressed');
                                          }))
                                      .toList(),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            SizedBox(height: 10), // Add some spacing
                            ElevatedButton(
                              onPressed: null,
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                            SizedBox(height: 10), // Add some spacing
                            SizedBox(
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, right: 50),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      child: const Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 255, 0, 0),
                                          fontSize: 18,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        padding:
                                            WidgetStateProperty.all<EdgeInsets>(
                                          EdgeInsets.zero,
                                        ),
                                        shape: WidgetStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                          const Color(0xFF1E1E1E),
                                        ),
                                      ),
                                      onPressed: onDeletePressed,
                                    ),
                                    const Spacer(),
                                    ElevatedButton(
                                      child: const Text(
                                        'Done',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      style: ButtonStyle(
                                        padding:
                                            WidgetStateProperty.all<EdgeInsets>(
                                          EdgeInsets.zero,
                                        ),
                                        shape: WidgetStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                          const Color(0xFF1E1E1E),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        if (onClosePressed != null) {
                                          onClosePressed!();
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Add some spacing
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.72,
                          child: Row(
                            children: [
                              Text(numberInput,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(buttonTitleText,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: null,
                            child: const Icon(Icons.delete,
                                color: Color.fromARGB(255, 255, 0, 0)),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF1E1E1E)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            ...radioList
                                .map((item) =>
                                    CheckboxItems(checkboxItemValue: item))
                                .toList(),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
