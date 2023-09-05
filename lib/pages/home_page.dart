import 'package:flutter/material.dart';
import 'package:quiz_game/constants/constants.dart';
import 'package:quiz_game/functions/changePage.dart';
import 'package:quiz_game/pages/quiz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: getHomeAppBar(),
      body: SafeArea(
        child: getHomeAppBody(context),
      ),
    );
  }

  Widget getHomeAppBody(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: ElevatedButton(
                onPressed: () {
                  quizAppBarTitle = Text(
                    'سوال ${questionIndex + 1} از $totalQuestions',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                  changePage(QuizPage(), context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appBarBG,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('بزن بریم'),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar getHomeAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: appBarElevation,
      title: homeAppBarTitle,
      backgroundColor: appBarBG,
    );
  }
}
