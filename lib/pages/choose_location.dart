import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    // simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Rivera';
    });

    // simulate network request to get bio for username
    String bio = await Future.delayed(const Duration(seconds: 1), () {
      return '$username create hologram...';
    });

    print('getData: $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Not block by getData()');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
