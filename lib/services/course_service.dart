import '../models/course_response.dart';
import '../models/course_id_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoursesService {
  static const String url = 'https://shrouded-harbor-95996.herokuapp.com';

  static Future<List<CourseResponse>> listarCursos() async {
    final response = await http.get(Uri.parse(url + '/courses'));

    if (response.statusCode == 200) {
      final lista = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return lista.map<CourseResponse>((item) => CourseResponse.fromJson(item)).toList();
    } else {
      throw Exception('Error al obtener lista de cursos');
    }
  }

  static Future<List<CourseIdResponse>> buscarCursoXId(String id) async {
    final response = await http.get(Uri.parse(url + '/courses/' + id));

    if (response.statusCode == 200) {
      final lista = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return lista.map<CourseIdResponse>((item) => CourseIdResponse.fromJson(item)).toList();
    } else {
      throw Exception('Error al obtener curso');
    }
  }

  static Future<List<CourseResponse>> historialCursos() async {
    final response = await http.get(Uri.parse(url + '/courses/history'));

    if (response.statusCode == 200) {
      final lista = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return lista.map<CourseResponse>((item) => CourseResponse.fromJson(item)).toList();
    } else {
      throw Exception('Error al obtener el historial de cursos');
    }
  }
}
