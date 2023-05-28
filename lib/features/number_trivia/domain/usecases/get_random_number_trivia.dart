


import 'package:dartz/dartz.dart';


import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';


class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository umberTriviaRepository;

  GetRandomNumberTrivia(this.umberTriviaRepository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await umberTriviaRepository.getRandomNumberTrivia();
  }
}
