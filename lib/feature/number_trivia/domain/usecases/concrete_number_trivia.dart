import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:number_trivia/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/feature/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  late final NumberTriviaRepository numberTriviaRepos;
  GetConcreteNumberTrivia(this.numberTriviaRepos);

  Future<Either<Failure, Numbertrivia>> excutes({required int number}) async {
    return await numberTriviaRepos.getConcreterNumberTrivia(number);
  }
}
