import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qlear/SubInputList/DialogCheckboxItems.dart';
import 'package:qlear/SubInputList/CheckboxItems.dart';

class NormalCheckboxInput extends StatefulWidget {
  final String numberInput;
  final TextEditingController textController;
  final List<String> checkboxList;
  final List<String> dialogCheckboxList;
  final String dialogTitle;
  final String dialogLabelText;
  final String dialogHintText;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onClosePressed;
  final VoidCallback? dialogAddButtonPressed;
  final VoidCallback? dialogDeleteButtonPressed;
  final Function(List<String>)? onDialogCheckboxListChanged; // New callback

  NormalCheckboxInput({
    required this.numberInput,
    required this.textController,
    required this.checkboxList,
    required this.dialogCheckboxList,
    required this.dialogTitle,
    required this.dialogLabelText,
    required this.dialogHintText,
    this.onDeletePressed,
    this.onClosePressed,
    this.dialogAddButtonPressed,
    this.dialogDeleteButtonPressed,
    this.onDialogCheckboxListChanged, // Initialize the callback
  });

  @override
  State<NormalCheckboxInput> createState() => _NormalCheckboxInputState();
}

class _NormalCheckboxInputState extends State<NormalCheckboxInput> {
  List<String> _dialogCheckboxList = [];

  @override
  void initState() {
    super.initState();
    widget.textController.addListener(_updateText);
    _dialogCheckboxList = List.from(widget.dialogCheckboxList);
  }

  @override
  void dispose() {
    widget.textController.removeListener(_updateText);
    super.dispose();
  }

  void _updateText() {
    setState(() {});
  }

  void _addDialogCheckboxItem() {
    setState(() {
      _dialogCheckboxList.add("New Item ${_dialogCheckboxList.length + 1}");
      widget.onDialogCheckboxListChanged
          ?.call(_dialogCheckboxList); // Update parent list
    });
  }

  void _deleteDialogCheckboxItem(int index) {
    setState(() {
      _dialogCheckboxList.removeAt(index);
      widget.onDialogCheckboxListChanged
          ?.call(_dialogCheckboxList); // Update parent list
    });
  }

  void _onTextChanged(int index, String newValue) {
    setState(() {
      _dialogCheckboxList[index] = newValue;
      widget.onDialogCheckboxListChanged
          ?.call(_dialogCheckboxList); // Notify parent
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Container(
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF1E1E1E)),
            ),
            // Inside your onPressed callback for the ElevatedButton that shows the dialog
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E1E1E),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20),
                                        TextField(
                                          controller: widget.textController,
                                          style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: widget.dialogLabelText,
                                            labelStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                            hintStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.35,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                ..._dialogCheckboxList
                                                    .asMap()
                                                    .entries
                                                    .map(
                                                      (entry) =>
                                                          DialogCheckboxItems(
                                                        textController:
                                                            TextEditingController(),
                                                        dialogCheckboxItemValue:
                                                            entry.value,
                                                        deleteCheckboxValue:
                                                            () {
                                                          setState(() {
                                                            _deleteDialogCheckboxItem(
                                                                entry.key);
                                                          });
                                                        },
                                                        onTextChanged:
                                                            (newValue) {
                                                          _onTextChanged(
                                                              entry.key,
                                                              newValue);
                                                        },
                                                      ),
                                                    )
                                                    .toList(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _addDialogCheckboxItem();
                                    });
                                  },
                                  style: ButtonStyle(
                                    padding:
                                        WidgetStateProperty.all<EdgeInsets>(
                                      EdgeInsets.zero,
                                    ),
                                    shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    backgroundColor: WidgetStateProperty.all(
                                      const Color(0xFF1E1E1E),
                                    ),
                                  ),
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 50.0, right: 50),
                                    child: Row(
                                      children: [
                                        ElevatedButton(
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 0, 0),
                                              fontSize: 18,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            padding: WidgetStateProperty.all<
                                                EdgeInsets>(
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
                                          onPressed: widget.onDeletePressed,
                                        ),
                                        Spacer(),
                                        ElevatedButton(
                                          child: const Text(
                                            'Done',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          style: ButtonStyle(
                                            padding: WidgetStateProperty.all<
                                                EdgeInsets>(
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
                                            if (widget.onClosePressed != null) {
                                              widget.onClosePressed!();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },

            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.72,
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
                        SizedBox(width: 8),
                        Container(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: null,
                            child: const Icon(Icons.edit,
                                color: Color.fromARGB(255, 255, 255, 255)),
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
                            SizedBox(height: 10),
                            // ...widget.checkboxList
                            //     .map((item) => CheckboxItems(checkboxItemValue: item))
                            //     .toList(),
                            // SizedBox(height: 10),
                            ..._dialogCheckboxList
                                .map((value) =>
                                    CheckboxItems(checkboxItemValue: value))
                                .toList(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
