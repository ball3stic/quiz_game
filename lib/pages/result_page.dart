import 'package:flutter/material.dart';
import 'package:quiz_game/constants/constants.dart';
import 'package:quiz_game/functions/changePage.dart';
import 'package:quiz_game/functions/changeStates.dart';
import 'package:quiz_game/pages/home_page.dart';
import 'package:quiz_game/pages/quiz_page.dart';

class ResutlPage extends StatelessWidget {
  const ResutlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getResultAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image(
                    image: AssetImage('images/cup.png'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'تعداد پاسخ های صحیح شما',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "${playerScore.toString()} / ${totalQuestions}",
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[800],
                        minimumSize: Size(double.infinity, 50)),
                    onPressed: () {
                      changePage(HomePage(), context);
                      playerScore = 0;
                      questionIndex = 0;
                      isQuestionsEnded = !isQuestionsEnded;
                    },
                    child: Text(
                      "بازی مجدد",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar getResultAppBar() {
    return AppBar(
      backgroundColor: Colors.red[800],
      title: Text("نتایج آزمون"),
      elevation: appBarElevation,
      centerTitle: true,
    );
  }
}
