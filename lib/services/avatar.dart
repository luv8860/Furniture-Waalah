import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarUrl;
  final Function onTap;

  const Avatar({this.avatarUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: avatarUrl == null
            ? CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent.shade400,
                child: Icon(Icons.photo_camera, size: 60.0),
                radius: 70.0)
            : CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(avatarUrl),
              ),
      ),
    );
  }
}
