import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/features/auth/data/models/auth_model.dart';
import 'package:kn_fit_app/app/features/auth/domain/entities/auth_entity.dart';

void main() {
  const tAuthModel = AuthModel(
    email: 'test@uorak.com',
    password: '123456',
  );

  test('should be a subclass of AuthEntity', () {
    // assert
    expect(tAuthModel, isA<AuthEntity>());
  });

  test('valid toJson', () {
    //arrange
    final Map<String, dynamic> jsonMap = {
      'email': 'test@uorak.com',
      'password': '123456',
    };
    //act
    final result = tAuthModel.toJson();
    //assert
    expect(result, jsonMap);
  });
}
