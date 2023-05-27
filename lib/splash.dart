import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/functions/functions.dart';
import 'package:netflix_clone/presentation/mainpage/screen_main_page.dart';
import 'package:netflix_clone/presentation/new_and_hot/functions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    splash(context);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDmmMZIyhtPhFrPgNJluXUJYJXROSX8Ua67A&usqp=CAU'),
      )),
    );
  }
}

Future<void> splash(BuildContext context) async {
  await HomeFunction.getComingSoon();
  await HomeFunction.gettopRated();
  await HomeFunction.getNowPlaying();
  await NewAndHotFunctions.getDiscover();
  HomeFunction.getTrending().whenComplete(
    () => Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ScreenMainPage(),
      ),
    ),
  );
}
