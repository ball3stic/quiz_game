import 'package:flutter/material.dart';
import 'package:quiz_game/constants/constants.dart';
import 'package:quiz_game/pages/quiz_page.dart';

bool isQuestionsEnded = false;

void changeStates(int index) {
  if (questionList.length - 1 > questionIndex) {
    if (questionList[questionIndex].correctAnswer == index &&
        !isQuestionsEnded) {
      playerScore++;
    }

    questionIndex++;
    quizAppBarTitle = Text(
      'سوال ${questionIndex + 1} از $totalQuestions',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  } else if (questionList[questionIndex].correctAnswer == index &&
      !isQuestionsEnded) {
    isQuestionsEnded = !isQuestionsEnded;

    playerScore++;
  } else if (!isQuestionsEnded) {
    isQuestionsEnded = !isQuestionsEnded;
  }
}
