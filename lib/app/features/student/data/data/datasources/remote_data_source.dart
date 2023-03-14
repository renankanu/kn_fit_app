import 'package:dio/dio.dart';
import 'package:kn_fit_app/app/core/errors/exception.dart';
import 'package:kn_fit_app/app/features/student/data/data/models/student_model.dart';

import '../../../../../core/constants/urls_constant.dart';

abstract class RemoteDataSource {
  Future<StudentModel> getInfoStudent(String id);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl({required this.dioClient});

  final Dio dioClient;

  @override
  Future<StudentModel> getInfoStudent(String id) async {
    final response = await dioClient.get(UrlsConstant.getInfoStudents);
    if (response.statusCode == 200) {
      return StudentModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
