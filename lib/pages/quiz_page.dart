import 'package:flutter/material.dart';
import 'package:quiz_game/constants/constants.dart';
import 'package:quiz_game/data/question_model.dart';
import 'package:quiz_game/functions/changePage.dart';
import 'package:quiz_game/functions/changeStates.dart';
import 'package:quiz_game/functions/getAnswersList.dart';
import 'package:quiz_game/pages/result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

List<Question> questionList = getQuestionsList();
int questionIndex = 0;
int playerScore = 0;
int totalQuestions = questionList.length;

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: getQuizAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: getQuizMainBody(context),
        ),
      ),
    );
  }

  Widget getQuizMainBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
        ),
        Image(
          image: AssetImage(questionList[questionIndex].imageName!),
        ),
        SizedBox(height: 10),
        Text(
          questionList[questionIndex].title!,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
        ),
        ...List.generate(
          4,
          (index) => getAnswersList(
            index,
            onTap: () => ListTileOnTap(index),
          ),
        ),
        SizedBox(height: 40),
        Visibility(
          visible: isQuestionsEnded,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: ElevatedButton(
              onPressed: () {
                changePage(ResutlPage(), context);
              },
              child: Text(
                'مشاهده نتیجه آزمون',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45),
                  backgroundColor: Colors.red[800]),
            ),
          ),
        ),
        Text(
          'Score: ${playerScore}',
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  AppBar getQuizAppBar() {
    return AppBar(
      backgroundColor: appBarBG,
      title: quizAppBarTitle,
      elevation: appBarElevation,
      centerTitle: true,
    );
  }

  void ListTileOnTap(int index) {
    setState(() {
      changeStates(index);
    });
  }
}
