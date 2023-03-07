import 'package:flutter/material.dart';
import 'package:user_page/models/users.dart';

class UserExpeince extends StatelessWidget {
  const UserExpeince({Key? key, required this.user1}) : super(key: key);

  final User user1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user1.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage:
                NetworkImage("https://picsum.photos/200/300?grayscale"),
          ),
          Text(
            user1.profesia,
            style: const TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 67, 5, 174)),
          ),
          Text(
            "${user1.age}",
            style: const TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 67, 5, 174)),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(user1.experience),
          ),
        ],
      ),
    );
  }
}
