import 'package:flutter/material.dart';

class StorieCircle extends StatefulWidget {
  const StorieCircle({super.key});

  @override
  State<StorieCircle> createState() => _StorieCircleState();
}

class _StorieCircleState extends State<StorieCircle> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 39,
          backgroundImage: AssetImage('assets/PersonExample.jpeg'),
        ),
      ),
    );
  }
}
