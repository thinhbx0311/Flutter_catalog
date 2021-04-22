import 'package:flutter/material.dart';

class TextFormFieldExample extends StatefulWidget {
  @override
  _TextFormFieldExampleState createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  bool _showPassword = false;
  bool _showConfirmPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.perm_identity),
              labelText: "Full Name",
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email_outlined),
              labelText:  "Email"
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          TextFormField(
            obscureText: !this._showPassword,
            decoration: InputDecoration(
                icon: Icon(Icons.security),
                labelText:  "Password",
              suffixIcon: IconButton(
                icon: this._showPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.remove_red_eye_outlined),
                onPressed: (){
                  setState(() {
                    this._showPassword = !this._showPassword;
                  });
                },
              ),

            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          TextFormField(
            obscureText: !this._showConfirmPassword,
            decoration: InputDecoration(
                icon: Icon(Icons.security),
                labelText:  "Confirm Your Password",
              suffixIcon: IconButton(
                icon: this._showConfirmPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.remove_red_eye_outlined),
                onPressed: (){
                  setState(() {
                    this._showConfirmPassword = !this._showConfirmPassword;
                  });
                },
              )
            ),
          )
        ],
      )
    );
  }
}
