import 'package:equatable/equatable.dart';

import 'gender_enum.dart';

class StudentEntity extends Equatable {
  final String id;
  final String fullName;
  final String? email;
  final String? avatar;
  final Gender gender;

  const StudentEntity({
    required this.id,
    required this.fullName,
    this.email,
    this.avatar,
    this.gender = Gender.other,
  });

  @override
  List<Object?> get props => [id, fullName, email, avatar, gender];
}
