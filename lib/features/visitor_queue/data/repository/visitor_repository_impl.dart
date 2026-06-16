import 'package:assignment/features/visitor_queue/data/datasource/visitor_local_datasource.dart';
import 'package:assignment/features/visitor_queue/domain/entities/visitor_entity.dart';
import 'package:assignment/features/visitor_queue/domain/repositories/visitor_repository.dart';

class VisitorRepositoryImpl
    implements VisitorRepository {

  final VisitorLocalDataSource localDataSource;

  VisitorRepositoryImpl(
    this.localDataSource,
  );

  @override
  Future<List<VisitorEntity>> getVisitors() {
    return localDataSource.getVisitors();
  }
}