import 'package:bloc_weatherapp/cubit/weather_cubit.dart';
import 'package:bloc_weatherapp/data/weather_repo.dart';
import 'package:bloc_weatherapp/pages/waether_searchpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<WeatherCubit>(
        create: (context) => WeatherCubit(FakeWeatherRepository()),
        child: WeatherSearchPage()),
    );
  }
}
