import 'package:assignment/features/visitor_queue/domain/entities/visitor_entity.dart';

abstract class VisitorRepository {
  Future<List<VisitorEntity>> getVisitors();
}