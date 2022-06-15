import '../models/teacher_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TeachersService {
  static const String url = 'https://shrouded-harbor-95996.herokuapp.com';

  static Future<List<TeacherResponse>> listarProfesores() async {
    final response = await http.get(Uri.parse(url + '/teachers'));

    if (response.statusCode == 200) {
      final lista = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return lista.map<TeacherResponse>((item) => TeacherResponse.fromJson(item)).toList();
    } else {
      throw Exception('Error al obtener lista de profesores');
    }
  }
}
