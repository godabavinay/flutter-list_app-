import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  Widget _buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(labelText: 'E-Mail'),
      keyboardType: TextInputType.emailAddress,
      onChanged: (String value) {
        setState(() {
          _emailValue = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
      onChanged: (String value) {
        setState(() {
          _passwordValue = value;
        });
      },
    );
  }

  Widget _buildAcceptSwitch() {
    return SwitchListTile(
      value: _acceptTerms,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  void _submitForm() {
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildEmailTextField(),
                SizedBox(
                  height: 5,
                ),
                _buildPasswordTextField(),
                _buildAcceptSwitch(),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  child: Text('LOGIN'),
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
