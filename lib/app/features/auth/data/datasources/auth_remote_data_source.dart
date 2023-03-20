import 'package:dio/dio.dart';

import '../../../../core/constants/urls_constant.dart';
import '../../../../core/errors/exception.dart';

abstract class AuthRemoteDataSource {
  Future<void> authUser({required String email, required String password});
}

class RemoteDataSourceImpl implements AuthRemoteDataSource {
  RemoteDataSourceImpl({required this.dioClient});

  final Dio dioClient;

  @override
  Future<void> authUser(
      {required String email, required String password}) async {
    final response = await dioClient.post(
      UrlsConstant.authUser,
      data: {
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw ServerException();
    }
  }
}
