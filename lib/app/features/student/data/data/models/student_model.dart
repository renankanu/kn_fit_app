import 'package:kn_fit_app/app/features/student/domain/entities/gender_enum.dart';
import 'package:kn_fit_app/app/features/student/domain/entities/student_entity.dart';

class StudentModel extends StudentEntity {
  const StudentModel({
    required super.id,
    required super.fullName,
    super.email,
    super.avatar,
    super.gender,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    final intGender = json['gender'] == null ? 2 : json['gender'] as int;
    return StudentModel(
      id: json['id'],
      fullName: json['fullName'],
      email: json['email'],
      avatar: json['avatar'],
      gender: Gender.values[intGender],
    );
  }
}
