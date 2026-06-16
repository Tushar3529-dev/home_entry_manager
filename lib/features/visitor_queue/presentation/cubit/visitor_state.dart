import 'package:assignment/core/enums/filter_visitor.dart';
import 'package:assignment/features/visitor_queue/domain/entities/visitor_entity.dart';

class VisitorState {
  final bool loading;
  final List<VisitorEntity> visitors;
  final VisitorFilter filter;

  const VisitorState({
    this.loading = false,
    this.visitors = const [],
    this.filter = VisitorFilter.All,
  });

  VisitorState copyWith({
    bool? loading,
    List<VisitorEntity>? visitors,
    VisitorFilter? filter,
  }) {
    return VisitorState(
      loading: loading ?? this.loading,
      visitors: visitors ?? this.visitors,
      filter: filter ?? this.filter,
    );
  }
}