import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/feature/number_trivia/domain/usecases/concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late final GetConcreteNumberTrivia concreteNumberTrivia;
  late final MockNumberTriviaRepository numberTriviaRepository;

  setUp(() {
    print('init here');
    numberTriviaRepository = MockNumberTriviaRepository();
    concreteNumberTrivia = GetConcreteNumberTrivia(numberTriviaRepository);
  });
  final tNumber = 1;
  final Numbertrivia tTrivia =
      Numbertrivia(number: tNumber, text: 'Ranodm Facts');
  test(
    'Should Get Concrete numbner trivia',
    () async {
      print('start here');

      /// [Arrange]
      // when(numberTriviaRepository.getConcreterNumberTrivia(1))
      //     .thenAnswer((_) async => Right(tTrivia));

      /// [Act]
      final _result = await concreteNumberTrivia.excutes(number: tNumber);

      /// [Assert]
      expect(_result, Right(tTrivia));
      verify(numberTriviaRepository.getConcreterNumberTrivia(tNumber));
      verifyNoMoreInteractions(numberTriviaRepository);
      print('end here');
    },
  );
}
