import 'package:flutter_test/flutter_test.dart';
import 'package:kn_fit_app/app/features/student/data/data/models/student_model.dart';
import 'package:kn_fit_app/app/features/student/domain/entities/gender_enum.dart';
import 'package:kn_fit_app/app/features/student/domain/entities/student_entity.dart';

void main() {
  const tStudentModel = StudentModel(
    id: '00',
    fullName: 'John Doe',
    email: 'john@doe.com',
    avatar: 'https://imagem.png',
    gender: Gender.male,
  );

  test(
    'should be a subclass of StudentEntity',
    () async {
      // assert
      expect(tStudentModel, isA<StudentEntity>());
    },
  );

  group('fromJson', () {
    test('should return a valid model', () {
      // arrange
      final Map<String, dynamic> jsonMap = {
        'id': '00',
        'fullName': 'John Doe',
        'email': 'john@doe.com',
        'avatar': 'https://imagem.png',
        'gender': 1,
      };
      // act
      final result = StudentModel.fromJson(jsonMap);
      // assert
      expect(result, tStudentModel);
    });
  });
}
