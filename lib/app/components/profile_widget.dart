import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final double? height;
  const ProfileWidget({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: const Row(
        children: [
          Icon(Icons.person),
          Expanded(child: Text('Profile')),
          Icon(Icons.notification_important),
        ],
      ),
    );
  }
}
