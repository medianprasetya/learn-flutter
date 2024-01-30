import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return MaterialApp(
      // title: 'Hello Flutter',
      // theme: ThemeData.dark(),
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('hello flutter')),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: ListView(
            children: [
              ListTile(
                onTap: () {
                  print('hello flutter');
                },
                leading: const CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('M'),
                ),
                title: Title(
                    color: Colors.lightBlue,
                    child: Text(
                      faker.person.firstName(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 18),
                    )),
                subtitle: Text(faker.lorem.sentence(), maxLines: 1),
                trailing: const Icon(
                  Icons.save,
                  color: Colors.teal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
