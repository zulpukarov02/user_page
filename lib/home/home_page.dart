import 'package:flutter/material.dart';
import 'package:user_page/home/user_expeince.dart';
import 'package:user_page/models/users.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'User Page',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.people,
            color: Colors.black,
          ),
          SizedBox(width: 170),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: user.length,
        itemBuilder: (context, index) {
          final users = user[index];
          return Center(
            child: Column(
              children: [
                const Divider(
                  thickness: 3,
                  height: 3,
                  color: Color.fromARGB(233, 18, 199, 42),
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserExpeince(user1: users),
                      ),
                    );
                  },
                  title: Text(users.name),
                  subtitle: Text("${users.profesia} ${users.age}jashta",
                      style: const TextStyle(color: Colors.black)),
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(users.profileImage),
                  ),
                  trailing: const Icon(Icons.chevron_right, size: 30),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
