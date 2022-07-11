import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    //   body: Form(
    //       key: _formKey,
    //       child: Column(
    //         children: [
    //           TextFormField(
    //               controller: _emailController,
    //               validator: (value) =>
    //                   value.isEmpty ? 'Please enter valid email' : null
    //                   ),
    //         ],
    //       )),
    // );
  }
}
