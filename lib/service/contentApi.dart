import 'dart:convert';

import 'dart:async';
import 'package:app_deaf/models/ContentModel.dart';
import 'package:app_deaf/models/Coures.dart';

import 'package:app_deaf/utils/constarts.dart';
import 'package:http/http.dart' as http;

class ContentsApi {
  static Future<List<ContentModel>> futureContentApi({required Coures couresModel}) async {

    String urlApi = 'https://www.androidthai.in.th/fluttertraining/getContentWhereIdCourseUng.php?isAdd=true&coure_id=${couresModel.id}';

    final response = await http.get(Uri.parse(urlApi));

    if (response.statusCode == 200) {
      //pares data
      final List result = json.decode(response.body);
      return result.map((e) => ContentModel.fromJson(e)).toList();
    } else {
      throw Exception('Can not connect api  ');
    }
  }
}
