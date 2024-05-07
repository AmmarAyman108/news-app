// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class Api {
  Dio dio ;
  Api({
    required this.dio,
  });
  
  Future get(
      {required String endPoint,

      String? token,
      Map<String, dynamic>? queryParameters}) async {
    
    Map<String, dynamic> headers = {
      //  'Content-Type': 'application/x-www-form-urlencoded',
      // 'Accept': 'application/json',
    };
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
        },
      );
    }
    Response response = await dio.get(
      endPoint,
      options: Options(headers: headers),
      queryParameters: queryParameters,
    );
    return response.data;
  }

  //DELETE Method
  Future delete(
      {required String url, //url is contain id of item to delete
      String? token,
      Map<String, dynamic>? queryParameters}) async {
    Dio dio = Dio();
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
        },
      );
    }

    Response response = await dio.delete(url,
        options: Options(headers: headers), queryParameters: queryParameters);
    return response.data;
  }

//POST Method
  Future post(
      {required String url,
      required body,
      String? token,
      Map<String, dynamic>? queryParameters}) async {
    Dio dio = Dio();
    Map<String, String> headers = {
      // 'Content-Type': 'application/x-www-form-urlencoded',
      // 'Accept': 'application/json',
    };
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    Response response = await dio.post(url,
        data: body,
        options: Options(
          headers: headers,
        ),
        queryParameters: queryParameters);
    return response.data;
  }

//PUT Method
  Future put(
      {required String url,
      required body,
      @required String? token,
      Map<String, dynamic>? queryParameters}) async {
    Dio dio = Dio();
    Map<String, String> headers = {
      // 'Content-Type': 'application/x-www-form-urlencoded',
      // 'Accept': 'application/json',
    };
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }

    Response response = await dio.put(url,
        data: body,
        options: Options(
          headers: headers,
        ),
        queryParameters: queryParameters);
    return response.data;
  }
}
