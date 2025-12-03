
import 'package:json_annotation/json_annotation.dart';
part 'person.g.dart';
@JsonSerializable()
class Person {
  final String firstName,lastName;
  final DateTime? dateOfBirth;

  Person({required this.firstName, required this.lastName, this.dateOfBirth});

  factory Person.fromJson(Map<String,dynamic> json)=>_$PersonFromJson(json);

}
