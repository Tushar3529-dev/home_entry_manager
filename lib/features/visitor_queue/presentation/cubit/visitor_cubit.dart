import 'package:assignment/core/enums/filter_visitor.dart';
import 'package:assignment/features/visitor_queue/domain/usecases/get_visitor_usecase.dart';
import 'package:assignment/features/visitor_queue/presentation/cubit/visitor_state.dart';
import 'package:bloc/bloc.dart';

class VisitorCubit
    extends Cubit<VisitorState> {

  final GetVisitorsUseCase getVisitors;

  VisitorCubit(
    this.getVisitors,
  ) : super(const VisitorState());

  Future<void> loadVisitors() async {

    emit(
      state.copyWith(
        loading: true,
      ),
    );

    final data =
        await getVisitors();

    emit(
      state.copyWith(
        loading: false,
        visitors: data,
      ),
    );
  }

  void changeFilter(
    VisitorFilter filter,
  ) {
    emit(
      state.copyWith(
        filter: filter,
      ),
    );
  }
}