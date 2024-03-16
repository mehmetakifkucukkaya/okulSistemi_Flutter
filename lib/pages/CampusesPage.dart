import 'package:flutter/material.dart';
import 'package:okul_sistemi/constants/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CampusesPage extends StatelessWidget {
  const CampusesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var campuses = Constants().yerleskeler;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(
          child: Text("Yerleşkelerimiz"),
        ),
      ),
      body: ListView.builder(
        itemCount: campuses.length,
        itemBuilder: (context, index) {
          final campus = campuses[index];
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
                    child: Image.asset(
                      campus['img'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        campus['name'],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  //* Modal'ı oluşturan metot
  void _showCampusDetails(
      BuildContext context, Map<String, dynamic> campus) {
    showModalBottomSheet(
      isScrollControlled: true, //* Ekranı tamamen kaplamasını sağlar
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
                    campus['name'],
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
                // Google Maps widget'ını burada kullanın
                SizedBox(
                  height: 200,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        double.parse(campus["coordinates"]["latitude"]),
                        double.parse(campus["coordinates"]["longitude"]),
                      ),
                      zoom: 15,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId(campus['name']),
                        position: LatLng(
                          double.parse(campus["coordinates"]["latitude"]),
                          double.parse(campus["coordinates"]["longitude"]),
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
