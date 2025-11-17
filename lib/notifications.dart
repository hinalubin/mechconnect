import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});
  List<dynamic> Notification = [
    {"status": "your request accepted"},
    {"status": "your request rejected"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Notification.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(title: Text(Notification[index]["status"])),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
