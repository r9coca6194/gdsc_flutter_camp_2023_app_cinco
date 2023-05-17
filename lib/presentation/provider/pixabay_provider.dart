import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/infraestructure/models/pixabay_result_model.dart';
import 'package:http/http.dart' as http;

String _apiKey = 'key=1631539-db8210cabd2636c6df59812df';
String _imageType = 'image_type=photo';
String url = 'https://pixabay.com/api/?$_apiKey&$_imageType';

class PixabayProvider extends ChangeNotifier {
  Future<PixabayResult> searchImagesPixabay(query) async {
    print("PIXABAY PROVIDER");
    final response = await http.get(Uri.parse("$url&q=$query"));
    //print("PIXABAY URL $url&q=$query");
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      PixabayResult result = PixabayResult.fromJson(json.decode(response.body));
      return result;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Pixabay');
    }
  }
}
