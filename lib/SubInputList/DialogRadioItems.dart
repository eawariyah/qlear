import 'package:flutter/material.dart';

class DialogRadioItems extends StatefulWidget {
  final String dialogRadioItemValue;
  final VoidCallback? deleteRadioValue;
  final TextEditingController textController;
  final Function(String) onTextChanged;

  DialogRadioItems({
    required this.dialogRadioItemValue,
    this.deleteRadioValue,
    required this.textController,
    required this.onTextChanged,
  });

  @override
  State<DialogRadioItems> createState() => _DialogRadioItemsState();
}

class _DialogRadioItemsState extends State<DialogRadioItems> {
  @override
  void initState() {
    super.initState();
    widget.textController.text = widget.dialogRadioItemValue;
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
            onPressed: widget.deleteRadioValue,
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
                labelText: widget.dialogRadioItemValue,
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
