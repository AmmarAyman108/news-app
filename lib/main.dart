import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home_view/presentation/manager/general_news_cubit/general_news_cubit.dart';
import 'features/home_view/presentation/view/home_view.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(255, 0, 28, 61),
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    systemNavigationBarColor: Color.fromARGB(255, 0, 0, 0),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: BlocProvider(
        create: (context) => GeneralNewsCubit()..getGeneralNews(),
        child: const HomeView(),
      ),
    );
  }
}
