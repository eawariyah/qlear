import 'package:flutter/material.dart';

class NormalTextInput extends StatelessWidget {
  final String numberInput;
  final String buttonText;
  final String dialogTitle;
  final String dialogLabelText;
  final String dialogHintText;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onClosePressed;

  NormalTextInput({
    required this.numberInput,
    required this.buttonText,
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
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              backgroundColor: WidgetStateProperty.all(const Color(0xFF1E1E1E)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: dialogLabelText,
                                  labelStyle: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  hintStyle: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, right: 50),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      child: const Text('Delete',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 0, 0),
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
                                      onPressed: onDeletePressed,
                                    ),
                                    const Spacer(),
                                    ElevatedButton(
                                      child: const Text('Done',
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
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.72,
                      child: Row(
                        children: [
                          Text(
                            numberInput,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            buttonText,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 60,
                      child: ElevatedButton(
                        onPressed: null,
                        child: const Icon(Icons.delete,
                            color: Color.fromARGB(255, 255, 0, 0)),
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xFF1E1E1E)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
