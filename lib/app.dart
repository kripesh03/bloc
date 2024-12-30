import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubit/dashboard_cubit.dart';
import 'package:practice/service_locator/service_locator.dart';
import 'package:practice/view/dashboard_cubit_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //tara aile yo use garna parena
      // ui lai bolauna block provider use garne
      // multi block le 3 ta ui kholya bhayera multi use gareko
      // providers: [
      //   BlocProvider<CounterCubit>(create: (context) => serviceLocator()),
      //   BlocProvider<StudentCubit>(create: (context) => serviceLocator()),
      //   BlocProvider<ArithmeticCubit>(create: (context) => serviceLocator()),
      //   // Dashboard cubit ma dependency inject gareko cha kinabhane through dashboard aru knolincha
      //   BlocProvider<DashboardCubit>(create: (context) => serviceLocator())
      // ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cubit',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: const DashboardView(),
      ),
    );
  }
}
