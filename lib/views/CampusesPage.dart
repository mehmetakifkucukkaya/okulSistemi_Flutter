// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/campus_controller.dart';
import '../models/campuse_model.dart';

class CampusesPage extends StatelessWidget {
  const CampusesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(
          child: Text("Yerleşkelerimiz"),
        ),
      ),
      body: FutureBuilder<List<Campus>>(
        future: CampusController.getAllCampuses(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          } else {
            final List<Campus> campuses = snapshot.data ?? [];
            return ListView.builder(
              itemCount: campuses.length,
              itemBuilder: (context, index) {
                final Campus campus = campuses[index];
                return GestureDetector(
                  onTap: () {
                    _showCampusDetails(context, campus);
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              campus.img,
                              fit: BoxFit.cover,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              campus.name,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  void _showCampusDetails(BuildContext context, Campus campus) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    campus.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const Text(
                  'Konum:',
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 200,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        double.parse(campus.latitude),
                        double.parse(campus.longitude),
                      ),
                      zoom: 15,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId(campus.name),
                        position: LatLng(
                          double.parse(campus.latitude),
                          double.parse(campus.longitude),
                        ),
                      ),
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
