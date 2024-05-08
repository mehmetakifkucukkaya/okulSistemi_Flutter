import 'package:flutter/material.dart';
import 'package:okul_sistemi/controllers/announcements_controller.dart';
import 'package:okul_sistemi/models/announcement_model.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Duyurular'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: FutureBuilder<List<Announcements>>(
          future: AnnouncementsController.getAllAnnouncements(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Hata: ${snapshot.error}'));
            } else {
              final List<Announcements> announcements =
                  snapshot.data ?? [];
              return ListView.builder(
                itemCount: announcements.length,
                itemBuilder: (context, index) {
                  final item = announcements[index];
                  return Column(
                    children: [
                      ListTile(
                        title: Text(item.title),
                        subtitle: Text(item.description),
                        trailing: Text(item.time),
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
                                  item.title,
                                  style: const TextStyle(fontSize: 26),
                                ),
                                content: Text(
                                  item.description,
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
              );
            }
          },
        ));
  }
}
