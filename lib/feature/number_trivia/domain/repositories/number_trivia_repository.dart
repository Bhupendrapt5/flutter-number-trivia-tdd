import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  /// Either get two parameter, [left], [right]
  /// [Left] side handles [error], [Right] Side Catches [Data]
  Future<Either<Failure, Numbertrivia>> getConcreterNumberTrivia(int number);
  Future<Either<Failure, Numbertrivia>> getRandomNumberTrivia();
}
