import 'package:equatable/equatable.dart';

class Numbertrivia extends Equatable {
  final int number;
  final String text;

  const Numbertrivia({required this.number, required this.text});
  @override
  List<Object?> get props => [this.number, this.text];
}
