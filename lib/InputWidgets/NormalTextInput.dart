import 'package:flutter/material.dart';

class NormalTextInput extends StatefulWidget {
  final String numberInput;
  final TextEditingController textController;
  final String dialogTitle;
  final String dialogLabelText;
  final String dialogHintText;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onClosePressed;

  NormalTextInput({
    required this.numberInput,
    required this.textController,
    required this.dialogTitle,
    required this.dialogLabelText,
    required this.dialogHintText,
    this.onDeletePressed,
    this.onClosePressed,
  });

  @override
  State<NormalTextInput> createState() => _NormalTextInputState();
}

class _NormalTextInputState extends State<NormalTextInput> {
  @override
  @override
  void initState() {
    super.initState();
    widget.textController.addListener(_updateText);
  }

  @override
  void dispose() {
    widget.textController.removeListener(_updateText);
    super.dispose();
  }

  void _updateText() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
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
                                controller: widget.textController,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: widget.dialogLabelText,
                                  // hintText: widget.dialogHintText,
                                  labelStyle: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  hintStyle: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.95,
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
                                      onPressed: widget.onDeletePressed,
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
                                        if (widget.onClosePressed != null) {
                                          widget.onClosePressed!();
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
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Row(
                            children: [
                              Text(widget.numberInput,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                    widget.textController.text.isEmpty
                                        ? widget.dialogHintText
                                        : widget.textController.text,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 60,
                          child: ElevatedButton(
                            onPressed: null,
                            child: const Icon(Icons.edit,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFF1E1E1E)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
        SizedBox(height: 5)
      ],
    );
  }
}
