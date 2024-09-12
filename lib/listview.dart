import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<User> get users => [
        User(
          name: 'faiz',
          email: 'faiz@gmail.com',
          imageURL:
              'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
        ),
               User(
          name: 'Aziz ',
          email: 'Aziz@gmail.com',
          imageURL:
              'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
        )
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        centerTitle: true,
       
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 80,
              color: Colors.blueAccent,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(users[index].imageURL),),
                title: Text(users[index].name),
                subtitle: Text(users[index].email),
              ),
            ),
          );
        },
      ),
    );
  }
}

class User {
  final String name;
  final String email;
  final String imageURL;

  User({required this.name, required this.email, required this.imageURL});
}
