import 'package:equatable/equatable.dart';

class StudentEntity extends Equatable {
  final String id;
  final String fullName;

  const StudentEntity({
    required this.id,
    required this.fullName,
  });

  @override
  List<Object> get props => [id, fullName];
}
