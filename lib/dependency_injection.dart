import 'package:assignment/features/visitor_queue/data/datasource/visitor_local_datasource.dart';
import 'package:assignment/features/visitor_queue/data/datasource/visitor_local_datasource_impl.dart';
import 'package:assignment/features/visitor_queue/data/repository/visitor_repository_impl.dart';
import 'package:assignment/features/visitor_queue/domain/repositories/visitor_repository.dart';
import 'package:assignment/features/visitor_queue/domain/usecases/get_visitor_usecase.dart';
import 'package:assignment/features/visitor_queue/presentation/cubit/visitor_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {

  getIt.registerLazySingleton<
      VisitorLocalDataSource>(
    () =>
        VisitorLocalDataSourceImpl(),
  );

  getIt.registerLazySingleton<
      VisitorRepository>(
    () => VisitorRepositoryImpl(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => GetVisitorsUseCase(
      getIt(),
    ),
  );

  getIt.registerFactory(
    () => VisitorCubit(
      getIt(),
    ),
  );
}