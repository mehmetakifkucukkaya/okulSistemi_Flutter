import '../models/campuse_model.dart';
import '../utils/database_helper.dart';

class CampusController {
  static Future<List<Campus>> getAllCampuses() async {
    try {
      final List<Campus> campuses = await DatabaseHelper.getAllCampuses();
      return campuses;
    } catch (e) {
      print('Yerleşkeler alınırken hata oluştu: $e');
      return [];
    }
  }
}
