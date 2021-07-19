import 'package:flutter/material.dart';
import 'ProfilePic.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        ProfilePic(),
        SizedBox(
          width: 10,
        ),
        Text(
          'Varun.aditya',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: Container()),
        Icon(
          Icons.more_vert_outlined,
          color: Colors.black54,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
