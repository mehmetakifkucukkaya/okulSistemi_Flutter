import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    var duyurular = Constants().announcements;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Duyurular'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: duyurular.length,
        itemBuilder: (context, index) {
          final item = duyurular[index];
          return Column(
            children: [
              ListTile(
                title: Text(item['title']!),
                subtitle: Text(item['description']!),
                leading: CircleAvatar(
                  child: Text((index + 1).toString()),
                ),
                onTap: () {
                  //* Duyuruya basılınca açılacak olan Modal
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          item['title']!,
                          style: const TextStyle(fontSize: 26),
                        ),
                        content: Text(
                          item['description']!,
                          style: const TextStyle(fontSize: 16),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Kapat'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
