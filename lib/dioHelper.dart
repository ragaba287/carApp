import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio _dio;
  static init() {
    _dio = Dio(
      BaseOptions(
        // baseUrl: 'http://localhost/laundry/',
        baseUrl: 'http://10.0.0.25/laundry/api/v1/',
        receiveDataWhenStatusError: true,
        // contentType: 'application/json'
      ),
    );
  }

  static Future<Response> getData({
    @required String url,
    Map<String, dynamic> query: const {'api_password': 'RjikEbtcypXTao7a38NWb'},
    Map<String, dynamic> data,
  }) async {
    return await _dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  Future<Response> showAllUsers() async =>
      await DioHelper.getData(url: 'users/');

  Future<Response> createUser({
    String name,
    email,
    password,
    phone,
  }) async {
    return await DioHelper.getData(url: 'users/create', query: {
      'api_password': 'RjikEbtcypXTao7a38NWb',
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
    });
  }

  static Future update(int id, String name, password, email, phone) async {
    await DioHelper.getData(
      url: 'users/update/$id',
      query: {
        'api_password': 'RjikEbtcypXTao7a38NWb',
        'name': name,
        'email': email,
        'password': password,
        'phone': phone
      },
    )
        .then(
      (value) => print(
        value.data,
      ),
    )
        .catchError((e) {
      print(
        'error : ${e.toString()} ',
      );
    });
  }

  Future<Response> showById(int id) async =>
      await DioHelper.getData(url: 'users/show/$id');

  Future<Response> deleteById(int id) async =>
      await DioHelper.getData(url: 'users/delete/$id');

  Future<Response> appointments() async => await DioHelper.getData(url: 'cars');

  static Future getAllCars() async => await DioHelper.getData(
        url: 'cars',
        query: {
          'api_password': 'RjikEbtcypXTao7a38NWb',
        },
      );

  Future getAllServices() async => await DioHelper.getData(
        url: 'services',
        query: {
          'api_password': 'RjikEbtcypXTao7a38NWb',
        },
      )
          .then(
            (value) => print(value.data),
          )
          .catchError(
            (e) => print(e.toString()),
          );
}
