import 'package:get_it/get_it.dart';
import 'package:practice/cubit/arithimetic_cubit.dart';
import 'package:practice/cubit/counter_cubit.dart';
import 'package:practice/cubit/dashboard_cubit.dart';
import 'package:practice/cubit/student_cubit.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initCubit();
}

void _initCubit() {
  serviceLocator.registerLazySingleton<CounterCubit>(() => CounterCubit());
  serviceLocator
      .registerLazySingleton<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLocator.registerLazySingleton<StudentCubit>(() => StudentCubit());
  serviceLocator.registerLazySingleton<DashboardCubit>(() => DashboardCubit(
        serviceLocator(),
        serviceLocator(),
        serviceLocator(),
      ));
}
