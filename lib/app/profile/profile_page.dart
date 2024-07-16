import 'package:flutter_modular/flutter_modular.dart';
import 'package:heroanimation/app/components/profile_widget.dart';
import 'package:heroanimation/app/profile/profile_store.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({super.key, this.title = 'ProfilePage'});
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final ProfileStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Hero(
        tag: 'profile',
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ProfileWidget(
                height: 250,
              )
            ],
          ),
        ),
      ),
    );
  }
}
