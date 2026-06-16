import 'package:assignment/features/visitor_queue/data/models/visitor_model.dart';

abstract class VisitorLocalDataSource {
  Future<List<VisitorModel>> getVisitors();
}