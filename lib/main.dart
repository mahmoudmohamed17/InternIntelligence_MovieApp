import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/helpers/app_routing.dart';
import 'package:movie_app/helpers/my_bloc_observer.dart';
import 'package:movie_app/helpers/routes.dart';
import 'package:movie_app/managers/home_cubit/home_cubit.dart';
import 'package:movie_app/managers/saved_movies_cubit/saved_movie_cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => SavedMovieCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        initialRoute: Routes.mainView,
        onGenerateRoute: AppRouting.onGeneratedRoute,
      ),
    );
  }
}
