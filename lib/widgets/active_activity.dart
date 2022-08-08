import 'package:flutter/material.dart';

class ActiveActivity extends StatefulWidget {
  const ActiveActivity({Key? key}) : super(key: key);

  @override
  State<ActiveActivity> createState() => _ActiveActivityState();
}

class _ActiveActivityState extends State<ActiveActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 200,
        width: double.infinity,
        color: Colors.deepOrange,
      ),
    );
  }
}
