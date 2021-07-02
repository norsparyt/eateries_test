import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/counter_cubit.dart';
import 'package:food_app/bloc/theme_cubit.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'repository/theme_data.dart';
import 'screens/home.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Prefs');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, int>(
        builder: (BuildContext context, state) => buildHome(context),
      ),
    );
  }

  Widget buildHome(BuildContext context) {
    //get theme data
    AppTheme appTheme = AppTheme();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme.lightThemeData,
        darkTheme: appTheme.darkThemeData,
        themeMode:
        Hive.box('Prefs').get('activeTheme', defaultValue: 0)==1
            ? ThemeMode.dark
            : ThemeMode.light,
        home: Home());
  }
}
