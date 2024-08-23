import 'package:flutter/material.dart';

class DialogCheckboxItems extends StatefulWidget {
  final String dialogCheckboxItemValue;
  final VoidCallback? deleteCheckboxValue;
  final TextEditingController textController;
  final Function(String) onTextChanged;

  DialogCheckboxItems({
    required this.dialogCheckboxItemValue,
    this.deleteCheckboxValue,
    required this.textController,
    required this.onTextChanged,
  });

  @override
  State<DialogCheckboxItems> createState() => _DialogCheckboxItemsState();
}

class _DialogCheckboxItemsState extends State<DialogCheckboxItems> {
  @override
  void initState() {
    super.initState();
    widget.textController.text = widget.dialogCheckboxItemValue;
    widget.textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.textController.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    widget.onTextChanged(widget.textController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 0.00),
      child: Row(
        children: [
          Spacer(),
          ElevatedButton(
            onPressed: widget.deleteCheckboxValue,
            child: Icon(Icons.cancel_outlined, color: Colors.white),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF1E1E1E)),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height * 0.05,
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: widget.textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: widget.dialogCheckboxItemValue,
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
