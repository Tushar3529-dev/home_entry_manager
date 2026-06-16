import 'package:assignment/features/visitor_queue/domain/entities/visitor_entity.dart';
import 'package:assignment/features/visitor_queue/domain/repositories/visitor_repository.dart';

class GetVisitorsUseCase {
  final VisitorRepository repository;

  GetVisitorsUseCase(
    this.repository,
  );

  Future<List<VisitorEntity>> call() {
    return repository.getVisitors();
  }
}