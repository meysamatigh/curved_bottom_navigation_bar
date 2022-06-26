import 'package:flutter/material.dart';

class IdentityPage extends StatefulWidget {
  const IdentityPage({Key? key}) : super(key: key);

  @override
  State<IdentityPage> createState() => _IdentityPageState();
}

class _IdentityPageState extends State<IdentityPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
