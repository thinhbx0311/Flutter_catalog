import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  bool _numberInputValid = true;

  Widget _buildNumberTextField() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.looks_one_outlined),
        labelText: "Enter an integer: ",
        errorText: _numberInputValid ? null : "Please enter an integer!",
      ),
      onSubmitted: (value) =>
          Fluttertoast.showToast(msg: "You entered: ${int.parse(value)}"),
      onChanged: (String value) {
        final val = int.tryParse(value);
        if (val == null) {
          setState(() {
            _numberInputValid = false;
          });
        } else {
          setState(() {
            _numberInputValid = true;
          });
        }
      },
    );
  }

  Widget _buildMultilineTextField() {
    return TextField(
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: "Enter multiline text",
        hintText: "type something..."
      ),
    );
  }

  bool _showPassword = false;
  Widget _buildPasswordInputField() {
    return TextField(
      obscureText: !this._showPassword,
      decoration: InputDecoration(
        labelText: "Enter your password",
        prefixIcon: Icon(Icons.security),
        suffixIcon: IconButton(
          icon: this._showPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.remove_red_eye_outlined),
          onPressed: (){
            setState(() {
              this._showPassword = !this._showPassword;
            });
          },
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        Text(
          "1. Number InputField",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        _buildNumberTextField(),
        Padding(padding: EdgeInsets.all(5.0)),
        Text(
          "2. Multiline InputField",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        _buildMultilineTextField(),
        Padding(padding: EdgeInsets.all(5.0)),
        Text(
          "3. Password InputField",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        _buildPasswordInputField()
      ],
    );
  }
}
